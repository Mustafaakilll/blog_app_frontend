// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      username: json['username'] as String,
      email: json['email'] as String,
      bio: json['bio'] as String,
      image: json['image'] as String,
      followers: json['followers'] as List<dynamic>,
      articles: json['articles'] as List<dynamic>,
      following: json['following'] as bool,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'username': instance.username,
      'email': instance.email,
      'bio': instance.bio,
      'image': instance.image,
      'followers': instance.followers,
      'articles': instance.articles,
      'following': instance.following,
    };
