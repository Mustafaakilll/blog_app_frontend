import 'package:json_annotation/json_annotation.dart';

part 'request_login_model.g.dart';

@JsonSerializable(createFactory: false)
class RequestLoginModel {
  RequestLoginModel({required this.email, required this.password});

  final String email;
  final String password;

  Map<String, dynamic> toJson() => _$RequestLoginModelToJson(this);
}
