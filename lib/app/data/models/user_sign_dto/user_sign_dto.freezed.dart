// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_sign_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSignDTO _$UserSignDTOFromJson(Map<String, dynamic> json) {
  return _UserSignDTO.fromJson(json);
}

/// @nodoc
mixin _$UserSignDTO {
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSignDTOCopyWith<UserSignDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignDTOCopyWith<$Res> {
  factory $UserSignDTOCopyWith(
          UserSignDTO value, $Res Function(UserSignDTO) then) =
      _$UserSignDTOCopyWithImpl<$Res, UserSignDTO>;
  @useResult
  $Res call({String? username, String? email, String? password});
}

/// @nodoc
class _$UserSignDTOCopyWithImpl<$Res, $Val extends UserSignDTO>
    implements $UserSignDTOCopyWith<$Res> {
  _$UserSignDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSignDTOImplCopyWith<$Res>
    implements $UserSignDTOCopyWith<$Res> {
  factory _$$UserSignDTOImplCopyWith(
          _$UserSignDTOImpl value, $Res Function(_$UserSignDTOImpl) then) =
      __$$UserSignDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? email, String? password});
}

/// @nodoc
class __$$UserSignDTOImplCopyWithImpl<$Res>
    extends _$UserSignDTOCopyWithImpl<$Res, _$UserSignDTOImpl>
    implements _$$UserSignDTOImplCopyWith<$Res> {
  __$$UserSignDTOImplCopyWithImpl(
      _$UserSignDTOImpl _value, $Res Function(_$UserSignDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$UserSignDTOImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSignDTOImpl implements _UserSignDTO {
  _$UserSignDTOImpl({this.username, this.email, this.password});

  factory _$UserSignDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSignDTOImplFromJson(json);

  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'UserSignDTO(username: $username, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignDTOImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignDTOImplCopyWith<_$UserSignDTOImpl> get copyWith =>
      __$$UserSignDTOImplCopyWithImpl<_$UserSignDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSignDTOImplToJson(
      this,
    );
  }
}

abstract class _UserSignDTO implements UserSignDTO {
  factory _UserSignDTO(
      {final String? username,
      final String? email,
      final String? password}) = _$UserSignDTOImpl;

  factory _UserSignDTO.fromJson(Map<String, dynamic> json) =
      _$UserSignDTOImpl.fromJson;

  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$UserSignDTOImplCopyWith<_$UserSignDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
