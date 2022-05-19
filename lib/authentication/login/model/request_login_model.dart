import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_login_model.freezed.dart';
part 'request_login_model.g.dart';

@freezed
class RequestLoginModel with _$RequestLoginModel {
  const factory RequestLoginModel({
    required String email,
    required String password,
  }) = _RequestLoginModel;

  factory RequestLoginModel.fromJson(Map<String, dynamic> json) => _$RequestLoginModelFromJson(json);
}
