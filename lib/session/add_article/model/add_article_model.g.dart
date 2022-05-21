// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddArticleModel _$$_AddArticleModelFromJson(Map<String, dynamic> json) =>
    _$_AddArticleModel(
      json['title'] as String,
      json['body'] as String,
      (json['tagList'] as List<dynamic>).map((e) => e as String).toList(),
      json['coverImage'] as String,
    );

Map<String, dynamic> _$$_AddArticleModelToJson(_$_AddArticleModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'tagList': instance.tagList,
      'coverImage': instance.coverImage,
    };
