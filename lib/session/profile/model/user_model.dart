import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  UserModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.username,
    required this.email,
    required this.bio,
    required this.image,
    required this.followers,
    required this.articles,
    required this.following,
  });

  // TODO: REMOVE TOJSON IF NOT NECESSARY
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  final int id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String username;
  final String email;
  final String bio;
  final String image;
  final List followers;
  final List articles;
  bool following;
  bool? isMe;
}