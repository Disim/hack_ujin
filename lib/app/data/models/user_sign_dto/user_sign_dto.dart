import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sign_dto.freezed.dart';
part 'user_sign_dto.g.dart';

@freezed
class UserSignDTO with _$UserSignDTO {
  factory UserSignDTO({
    required String username,
    required String email,
    required String password,
  }) = _UserSignDTO;

  factory UserSignDTO.fromJson(Map<String, dynamic> json) =>
      _$UserSignDTOFromJson(json);
}
