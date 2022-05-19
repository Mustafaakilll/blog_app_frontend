import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_signup_model.freezed.dart';
part 'request_signup_model.g.dart';

@freezed
class RequestSignupModel with _$RequestSignupModel {
  const factory RequestSignupModel({
    required String username,
    required String email,
    required String password,
  }) = _RequestSignupModel;

  factory RequestSignupModel.fromJson(Map<String, dynamic> json) => _$RequestSignupModelFromJson(json);
}
