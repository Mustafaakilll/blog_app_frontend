// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleResponseModel _$$_ArticleResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleResponseModel(
      id: json['id'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      tagList:
          (json['tagList'] as List<dynamic>?)?.map((e) => e as String).toList(),
      coverImage: json['coverImage'] as String,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      favoritedBy: (json['favoritedBy'] as List<dynamic>)
          .map((e) => Author.fromJson(e as Map<String, dynamic>))
          .toList(),
      favoriteCount: json['favoriteCount'] as int,
      favorited: json['favorited'] as bool,
    );

Map<String, dynamic> _$$_ArticleResponseModelToJson(
        _$_ArticleResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'title': instance.title,
      'body': instance.body,
      'tagList': instance.tagList,
      'coverImage': instance.coverImage,
      'author': instance.author,
      'favoritedBy': instance.favoritedBy,
      'favoriteCount': instance.favoriteCount,
      'favorited': instance.favorited,
    };

_$_Author _$$_AuthorFromJson(Map<String, dynamic> json) => _$_Author(
      id: json['id'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      bio: json['bio'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_AuthorToJson(_$_Author instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'username': instance.username,
      'email': instance.email,
      'bio': instance.bio,
      'image': instance.image,
    };
