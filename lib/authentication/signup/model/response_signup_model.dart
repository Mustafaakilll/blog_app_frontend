import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_signup_model.freezed.dart';
part 'response_signup_model.g.dart';

@freezed
class ResponseSignupModel with _$ResponseSignupModel {
  const factory ResponseSignupModel({
    required int id,
    required String createdAt,
    required String updatedAt,
    required String username,
    required String email,
    @Default('') String? password,
    required String bio,
    required String image,
  }) = _ResponseSignupModel;

  factory ResponseSignupModel.fromJson(Map<String, dynamic> json) => _$ResponseSignupModelFromJson(json);
}
