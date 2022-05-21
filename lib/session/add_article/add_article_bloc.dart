import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/utils.dart';
import '../article_repository.dart';
import '../navigator/session_navigator_cubit.dart';
import 'model/add_article_model.dart';

part 'add_article_bloc.freezed.dart';
part 'add_article_event.dart';
part 'add_article_state.dart';

class AddArticleBloc extends Bloc<AddArticleEvent, AddArticleState> {
  AddArticleBloc({required this.sessionNavCubit, required this.articleRepo}) : super(const AddArticleState.initial()) {
    on<AddArticleEvent>(
      (event, emit) {
        event.when(
          titleChanged: _onTitleChanged,
          descriptionChanged: _onDescriptionChanged,
          tagsChanged: _onTagsChanged,
          openImagePicker: _onOpenImagePicker,
          addArticle: _onAddArticle,
        );
      },
    );
  }

  final ImagePicker _picker = ImagePicker();
  final ArticleRepository articleRepo;
  final SessionNavigatorCubit sessionNavCubit;

  void _onTitleChanged(String title) {
    emit(state.copyWith(title: title));
  }

  void _onDescriptionChanged(String description) {
    emit(state.copyWith(description: description));
  }

  void _onTagsChanged(List<String> tags) {
    emit(state.copyWith(tags: tags));
  }

  Future<void> _onOpenImagePicker() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    emit(state.copyWith(coverImage: pickedFile.path));
  }

  Future<void> _onAddArticle() async {
    emit(state.copyWith(formStatus: const FormSubmitting()));
    try {
      final imageUrl = await articleRepo.uploadImageToCloud(state.coverImage!, 'image');
      await articleRepo.addArticle(AddArticleModel(state.title, state.description, state.tags, imageUrl));
      emit(state.copyWith(formStatus: const SubmissionSuccess()));
      sessionNavCubit.setPageIndex(0);
    } on Exception catch (e) {
      emit(state.copyWith(formStatus: SubmissionFailure(exception: e.toString())));
    }
  }
}
