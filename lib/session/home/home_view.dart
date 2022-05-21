import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/widget_extension.dart';
import '../article_repository.dart';
import 'home_bloc.dart';
import 'model/article_response_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(builder: (_) => const HomeView());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(articleRepo: context.read<ArticleRepository>())..add(const HomeEvent.getArticle()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('HOME'),
        ),
        body: const _HomeBody(),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        state.whenOrNull(loadFail: (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e)),
          );
        });
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const _HomeLoading(),
          success: (articles) => _HomeArticleBody(articles: articles),
          loadFail: (exception) => _HomeErrorBody(exception: exception),
          orElse: () => Center(child: Text('Unknown state: $state')),
        )!;
      },
    );
  }
}

class _HomeLoading extends StatelessWidget {
  const _HomeLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _HomeArticleBody extends StatelessWidget {
  const _HomeArticleBody({Key? key, required this.articles}) : super(key: key);

  final List<ArticleResponseModel> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return Card(
          color: Colors.transparent,
          child: Column(
            children: [
              _articleAuthor(article.author, context.height),
              _articleImage(article),
              _articleDetail(article),
            ],
          ),
        );
      },
    );
  }

  Widget _articleAuthor(Author author, double height) {
    return Row(
      children: <Widget>[
        CircleAvatar(foregroundImage: NetworkImage(author.image), radius: 20),
        SizedBox(width: height * .01),
        Text(author.username),
      ],
    );
  }
}

Widget _articleImage(ArticleResponseModel article) {
  return AspectRatio(aspectRatio: 4 / 5, child: CachedNetworkImage(imageUrl: article.coverImage));
}

Widget _articleDetail(ArticleResponseModel article) {
  return ListTile(
    title: Text(article.title),
    subtitle: Text(article.body),
  );
}

class _HomeErrorBody extends StatelessWidget {
  const _HomeErrorBody({Key? key, required this.exception}) : super(key: key);

  final String exception;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(exception));
  }
}
