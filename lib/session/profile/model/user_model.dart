import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String username,
    required String email,
    required String bio,
    required String image,
    required List followers,
    required List articles,
    required bool following,
    @Default(false) bool? isMe,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
