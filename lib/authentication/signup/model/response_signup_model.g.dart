// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseSignupModel _$$_ResponseSignupModelFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseSignupModel(
      id: json['id'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String? ?? '',
      bio: json['bio'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_ResponseSignupModelToJson(
        _$_ResponseSignupModel instance) =>
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
