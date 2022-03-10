import 'package:json_annotation/json_annotation.dart';

part 'response_login_model.g.dart';

@JsonSerializable(createToJson: false)
class ResponseLoginModel {
  ResponseLoginModel({required this.user, required this.token});

  factory ResponseLoginModel.fromJson(Map<String, dynamic> json) {
    return _$ResponseLoginModelFromJson(json);
  }

  final _User user;
  final String token;
}

@JsonSerializable()
class _User {
  _User({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.username,
    required this.email,
    required this.bio,
    required this.image,
  });

  factory _User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);

  final int id;
  final String createdAt;
  final String updatedAt;
  final String username;
  final String email;
  String? password;
  final String bio;
  final String image;
}
