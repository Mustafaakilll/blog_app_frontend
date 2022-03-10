import 'package:json_annotation/json_annotation.dart';

part 'response_signup_model.g.dart';

@JsonSerializable()
class ResponseSignupModel {
  ResponseSignupModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.username,
    required this.email,
    required this.bio,
    required this.image,
  });

  factory ResponseSignupModel.fromJson(Map<String, dynamic> json) {
    return _$ResponseSignupModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseSignupModelToJson(this);

  final int id;
  final String createdAt;
  final String updatedAt;
  final String username;
  final String email;
  String? password;
  final String bio;
  final String image;
}
