import 'package:json_annotation/json_annotation.dart';

part 'request_signup_model.g.dart';

@JsonSerializable(createFactory: false)
class RequestSignupModel {
  RequestSignupModel({required this.username, required this.email, required this.password});

  final String username;
  final String email;
  final String password;

  Map<String, dynamic> toJson() => _$RequestSignupModelToJson(this);
}
