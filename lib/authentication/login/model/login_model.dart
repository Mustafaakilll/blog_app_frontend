import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable(createFactory: false)
class LoginModel {
  LoginModel({required this.email, required this.password});

  final String email;
  final String password;

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
