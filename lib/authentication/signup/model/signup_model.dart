import 'package:json_annotation/json_annotation.dart';

part 'signup_model.g.dart';

@JsonSerializable(createFactory: false)
class SignupModel {
  SignupModel({required this.username, required this.email, required this.password});

  final String username;
  final String email;
  final String password;

  Map<String, dynamic> toJson() => _$SignupModelToJson(this);
}
