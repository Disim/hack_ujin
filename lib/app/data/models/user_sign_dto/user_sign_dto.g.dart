// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sign_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSignDTOImpl _$$UserSignDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserSignDTOImpl(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserSignDTOImplToJson(_$UserSignDTOImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };
