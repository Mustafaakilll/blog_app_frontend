// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseSignupModel _$ResponseSignupModelFromJson(Map<String, dynamic> json) =>
    ResponseSignupModel(
      id: json['id'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      bio: json['bio'] as String,
      image: json['image'] as String,
    )..password = json['password'] as String?;

Map<String, dynamic> _$ResponseSignupModelToJson(
        ResponseSignupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'bio': instance.bio,
      'image': instance.image,
    };
