import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_login_model.freezed.dart';
part 'response_login_model.g.dart';

@freezed
class ResponseLoginModel with _$ResponseLoginModel {
  const factory ResponseLoginModel({
    required User user,
    required String token,
  }) = _ResponseLoginModel;

  factory ResponseLoginModel.fromJson(Map<String, dynamic> json) => _$ResponseLoginModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    @Default('') String password,
    required String username,
    required String email,
    required String bio,
    required String image,
    required String createdAt,
    required String updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
