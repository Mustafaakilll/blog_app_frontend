import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_model.freezed.dart';
part 'edit_profile_model.g.dart';

@freezed
class EditProfileModel with _$EditProfileModel {
  const factory EditProfileModel({
    // required String username,
    required String email,
    required String bio,
    String? image,
  }) = _EditProfileModel;

  factory EditProfileModel.fromJson(Map<String, dynamic> json) => _$EditProfileModelFromJson(json);
}
