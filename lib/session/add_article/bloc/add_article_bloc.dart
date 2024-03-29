import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/utils.dart';
import '../../article_repository.dart';
import '../../navigator/bloc/session_navigator_cubit.dart';
import '../model/add_article_model.dart';

part 'add_article_bloc.freezed.dart';
part 'add_article_event.dart';
part 'add_article_state.dart';

class AddArticleBloc extends Bloc<AddArticleEvent, AddArticleState> {
  AddArticleBloc({required this.picker, required this.sessionNavCubit, required this.articleRepo})
      : super(const AddArticleState.initial()) {
    on<AddArticleEvent>((event, emit) {
      event.when(
        titleChanged: (title) => _onTitleChanged(title, emit),
        descriptionChanged: (description) => _onDescriptionChanged(description, emit),
        tagsChanged: (tags) => _onTagsChanged(tags, emit),
        openImagePicker: () => _onOpenImagePicker(emit),
        addArticle: () => _onAddArticle(emit),
      );
    });
  }

  final ImagePicker picker;
  final ArticleRepository articleRepo;
  final SessionNavigatorCubit sessionNavCubit;

  void _onTitleChanged(String title, Emitter<AddArticleState> emit) {
    emit(state.copyWith(title: title));
  }

  void _onDescriptionChanged(String description, Emitter<AddArticleState> emit) {
    emit(state.copyWith(description: description));
  }

  void _onTagsChanged(List<String> tags, Emitter<AddArticleState> emit) {
    emit(state.copyWith(tags: tags));
  }

  Future<void> _onOpenImagePicker(Emitter<AddArticleState> emit) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    emit(state.copyWith(coverImage: pickedFile.path));
  }

  Future<void> _onAddArticle(Emitter<AddArticleState> emit) async {
    emit(state.copyWith(formStatus: const FormSubmitting()));
    try {
      _checkNullableValues();
      final imageUrl = await articleRepo.uploadArticleCoverImageToCloud(state.coverImage!, 'image');
      await articleRepo.addArticle(AddArticleModel(state.title!, state.description!, state.tags, imageUrl));
      emit(state.copyWith(formStatus: const SubmissionSuccess()));
      sessionNavCubit.setPageIndex(0);
    } on Error catch (e) {
      emit(state.copyWith(formStatus: SubmissionFailure(exception: e.toString())));
    } on Exception catch (e) {
      emit(state.copyWith(formStatus: SubmissionFailure(exception: e.toString())));
    }
  }

  void _checkNullableValues() {
    if (state.coverImage == null) throw Exception('Your post has to be have an image');
    if (state.title == null) throw Exception('Your post has to be a title');
    if (state.description == null) throw Exception('Your post has to be a description');
  }
}
