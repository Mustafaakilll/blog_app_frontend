import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/utils.dart';
import '../article_repository.dart';
import '../navigator/session_navigator_cubit.dart';
import 'model/add_article_model.dart';

part 'add_article_event.dart';
part 'add_article_state.dart';

class AddArticleBloc extends Bloc<AddArticleEvent, AddArticleState> {
  AddArticleBloc({required this.sessionNavCubit, required this.articleRepo}) : super(const AddArticleState()) {
    on<TitleChanged>(_onTitleChanged);
    on<DescriptionChanged>(_onDescriptionChanged);
    on<TagsChanged>(_onTagsChanged);
    on<OpenImagePicker>(_onOpenImagePicker);
    on<AddArticle>(_onAddArticle);
  }

  final ImagePicker _picker = ImagePicker();
  final ArticleRepository articleRepo;
  final SessionNavigatorCubit sessionNavCubit;

  void _onTitleChanged(TitleChanged event, Emitter<AddArticleState> emit) {
    emit(state.copyWith(title: event.title));
  }

  void _onDescriptionChanged(DescriptionChanged event, Emitter<AddArticleState> emit) {
    emit(state.copyWith(description: event.description));
  }

  void _onTagsChanged(TagsChanged event, Emitter<AddArticleState> emit) {
    emit(state.copyWith(tags: event.tags));
  }

  Future<void> _onOpenImagePicker(OpenImagePicker event, Emitter<AddArticleState> emit) async {
    final _pickedFile = await _picker.getImage(source: ImageSource.gallery);
    if (_pickedFile == null) return;
    emit(state.copyWith(coverImage: _pickedFile.path));
  }

  Future<void> _onAddArticle(AddArticle event, Emitter<AddArticleState> emit) async {
    emit(state.copyWith(formStatus: const FormSubmitting()));
    try {
      final _imageUrl = await articleRepo.uploadImageToCloud(state.coverImage!, 'image');
      articleRepo.addArticle(AddArticleModel(state.title, state.description, state.tags, _imageUrl));
      emit(state.copyWith(formStatus: const SubmissionSuccess()));
      sessionNavCubit.setPageIndex(0);
    } on Exception catch (e) {
      emit(state.copyWith(formStatus: SubmissionFailure(exception: e.toString())));
    }
  }
}
