// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../access_token_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessTokenRequestParams _$AccessTokenRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _AccessTokenRequestParams.fromJson(json);
}

/// @nodoc
mixin _$AccessTokenRequestParams {
  @JsonKey(name: 'client_id')
  String? get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_secret')
  String? get clientSecret => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenRequestParamsCopyWith<AccessTokenRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenRequestParamsCopyWith<$Res> {
  factory $AccessTokenRequestParamsCopyWith(AccessTokenRequestParams value,
          $Res Function(AccessTokenRequestParams) then) =
      _$AccessTokenRequestParamsCopyWithImpl<$Res, AccessTokenRequestParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'client_secret') String? clientSecret,
      @JsonKey(name: 'code') String? code});
}

/// @nodoc
class _$AccessTokenRequestParamsCopyWithImpl<$Res,
        $Val extends AccessTokenRequestParams>
    implements $AccessTokenRequestParamsCopyWith<$Res> {
  _$AccessTokenRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? clientSecret = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessTokenRequestParamsImplCopyWith<$Res>
    implements $AccessTokenRequestParamsCopyWith<$Res> {
  factory _$$AccessTokenRequestParamsImplCopyWith(
          _$AccessTokenRequestParamsImpl value,
          $Res Function(_$AccessTokenRequestParamsImpl) then) =
      __$$AccessTokenRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'client_secret') String? clientSecret,
      @JsonKey(name: 'code') String? code});
}

/// @nodoc
class __$$AccessTokenRequestParamsImplCopyWithImpl<$Res>
    extends _$AccessTokenRequestParamsCopyWithImpl<$Res,
        _$AccessTokenRequestParamsImpl>
    implements _$$AccessTokenRequestParamsImplCopyWith<$Res> {
  __$$AccessTokenRequestParamsImplCopyWithImpl(
      _$AccessTokenRequestParamsImpl _value,
      $Res Function(_$AccessTokenRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? clientSecret = freezed,
    Object? code = freezed,
  }) {
    return _then(_$AccessTokenRequestParamsImpl(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessTokenRequestParamsImpl implements _AccessTokenRequestParams {
  _$AccessTokenRequestParamsImpl(
      {@JsonKey(name: 'client_id') this.clientId,
      @JsonKey(name: 'client_secret') this.clientSecret,
      @JsonKey(name: 'code') this.code});

  factory _$AccessTokenRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessTokenRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'client_id')
  final String? clientId;
  @override
  @JsonKey(name: 'client_secret')
  final String? clientSecret;
  @override
  @JsonKey(name: 'code')
  final String? code;

  @override
  String toString() {
    return 'AccessTokenRequestParams(clientId: $clientId, clientSecret: $clientSecret, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessTokenRequestParamsImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, clientSecret, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessTokenRequestParamsImplCopyWith<_$AccessTokenRequestParamsImpl>
      get copyWith => __$$AccessTokenRequestParamsImplCopyWithImpl<
          _$AccessTokenRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessTokenRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _AccessTokenRequestParams implements AccessTokenRequestParams {
  factory _AccessTokenRequestParams(
          {@JsonKey(name: 'client_id') final String? clientId,
          @JsonKey(name: 'client_secret') final String? clientSecret,
          @JsonKey(name: 'code') final String? code}) =
      _$AccessTokenRequestParamsImpl;

  factory _AccessTokenRequestParams.fromJson(Map<String, dynamic> json) =
      _$AccessTokenRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'client_id')
  String? get clientId;
  @override
  @JsonKey(name: 'client_secret')
  String? get clientSecret;
  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$AccessTokenRequestParamsImplCopyWith<_$AccessTokenRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
