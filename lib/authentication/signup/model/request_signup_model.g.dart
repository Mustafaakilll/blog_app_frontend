// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestSignupModel _$$_RequestSignupModelFromJson(
        Map<String, dynamic> json) =>
    _$_RequestSignupModel(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_RequestSignupModelToJson(
        _$_RequestSignupModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };
