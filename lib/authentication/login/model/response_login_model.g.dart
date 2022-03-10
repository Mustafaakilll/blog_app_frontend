// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseLoginModel _$ResponseLoginModelFromJson(Map<String, dynamic> json) =>
    ResponseLoginModel(
      user: _User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: json['id'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      bio: json['bio'] as String,
      image: json['image'] as String,
    )..password = json['password'] as String?;

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'bio': instance.bio,
      'image': instance.image,
    };
