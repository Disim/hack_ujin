// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JwtModelImpl _$$JwtModelImplFromJson(Map<String, dynamic> json) =>
    _$JwtModelImpl(
      refresh: json['refreshToken'] as String,
      access: json['token'] as String?,
    );

Map<String, dynamic> _$$JwtModelImplToJson(_$JwtModelImpl instance) =>
    <String, dynamic>{
      'refreshToken': instance.refresh,
      'token': instance.access,
    };
