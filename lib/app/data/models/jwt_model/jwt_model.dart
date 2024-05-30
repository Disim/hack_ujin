// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_model.freezed.dart';
part 'jwt_model.g.dart';

@freezed
class JwtModel with _$JwtModel {
  factory JwtModel({
    @JsonKey(name: 'refreshToken') required String refresh,
    @JsonKey(name: 'token') String? access,
  }) = _JwtModel;

  factory JwtModel.fromJson(Map<String, dynamic> json) =>
      _$JwtModelFromJson(json);
}
