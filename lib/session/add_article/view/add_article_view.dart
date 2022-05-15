import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/utils.dart';
import '../../article_repository.dart';
import '../../navigator/session_navigator_cubit.dart';
import '../add_article_bloc.dart';

class AddArticleView extends StatelessWidget {
  const AddArticleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddArticleBloc>(
      create: (context) => AddArticleBloc(
        articleRepo: context.read<ArticleRepository>(),
        sessionNavCubit: context.read<SessionNavigatorCubit>(),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.lowValue),
        child: const SafeArea(
          child: _AddArticleForm(),
        ),
      ),
    );
  }
}

class _AddArticleForm extends StatelessWidget {
  const _AddArticleForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddArticleBloc, AddArticleState>(
      listener: (context, state) {
        if (state is SubmissionSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Article added')));
        }
        final formStatus = state.formStatus;
        if (formStatus is SubmissionFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(formStatus.exception)));
        }
      },
      child: Column(
        children: [
          context.emptySizedHeightBoxLow3x,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _TitleField(),
              _ImageField(),
            ],
          ),
          context.emptySizedHeightBoxLow3x,
          const _DescriptionField(),
          const _SubmitButton(),
        ],
      ),
    );
  }
}

class _TitleField extends StatelessWidget {
  const _TitleField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddArticleBloc, AddArticleState>(
      builder: (context, state) {
        return TextField(
          onChanged: (value) => context.read<AddArticleBloc>().add(TitleChanged(value)),
          decoration: InputDecoration(
            labelText: 'Title',
            hintText: 'Write your blog\'s title title here',
            constraints: BoxConstraints(maxHeight: context.highValue, maxWidth: context.dynamicWidth(.7)),
          ),
        );
      },
    );
  }
}

class _ImageField extends StatelessWidget {
  const _ImageField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddArticleBloc, AddArticleState>(
      builder: (context, state) {
        return SizedBox(
          height: context.highValue,
          width: context.dynamicWidth(.2),
          child: state.coverImage != null
              ? GestureDetector(
                  child: Image.file(File(state.coverImage!)),
                  onTap: () => AppConstants.navKey.currentState!
                      .push(MaterialPageRoute(builder: (context) => _FullScreenImage(filePath: state.coverImage!))),
                )
              : GestureDetector(
                  onTap: () => context.read<AddArticleBloc>().add(const OpenImagePicker()),
                  child: Icon(Icons.add_photo_alternate, size: context.highValue)),
        );
      },
    );
  }
}

class _FullScreenImage extends StatelessWidget {
  const _FullScreenImage({Key? key, required this.filePath}) : super(key: key);
  final String filePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 333),
                curve: Curves.fastOutSlowIn,
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: InteractiveViewer(
                  panEnabled: true,
                  minScale: 0.5,
                  maxScale: 4,
                  child: Image.file(File(filePath)),
                ),
              ),
            ],
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: MaterialButton(
                padding: const EdgeInsets.all(15),
                elevation: 0,
                highlightElevation: 0,
                minWidth: double.minPositive,
                height: double.minPositive,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: const Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DescriptionField extends StatelessWidget {
  const _DescriptionField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddArticleBloc, AddArticleState>(
      builder: (context, state) {
        return Expanded(
          child: TextField(
            onChanged: (value) => context.read<AddArticleBloc>().add(DescriptionChanged(value)),
            expands: true,
            maxLines: null,
            minLines: null,
            textAlignVertical: TextAlignVertical.top,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Description',
              hintText: 'Write your blog\'s description here',
            ),
          ),
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddArticleBloc, AddArticleState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed:
              state.formStatus is FormSubmitting ? null : () => context.read<AddArticleBloc>().add(const AddArticle()),
          child: const Text('Add Article'),
        );
      },
    );
  }
}
