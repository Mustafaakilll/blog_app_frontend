// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseLoginModel _$$_ResponseLoginModelFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseLoginModel(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_ResponseLoginModelToJson(
        _$_ResponseLoginModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      password: json['password'] as String? ?? '',
      username: json['username'] as String,
      email: json['email'] as String,
      bio: json['bio'] as String,
      image: json['image'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'username': instance.username,
      'email': instance.email,
      'bio': instance.bio,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
