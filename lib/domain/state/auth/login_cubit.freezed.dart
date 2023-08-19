// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  String get code => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  LoginResult get loginResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({String code, bool isSubmitting, LoginResult loginResult});

  $LoginResultCopyWith<$Res> get loginResult;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? isSubmitting = null,
    Object? loginResult = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      loginResult: null == loginResult
          ? _value.loginResult
          : loginResult // ignore: cast_nullable_to_non_nullable
              as LoginResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResultCopyWith<$Res> get loginResult {
    return $LoginResultCopyWith<$Res>(_value.loginResult, (value) {
      return _then(_value.copyWith(loginResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, bool isSubmitting, LoginResult loginResult});

  @override
  $LoginResultCopyWith<$Res> get loginResult;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? isSubmitting = null,
    Object? loginResult = null,
  }) {
    return _then(_$_LoginState(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      loginResult: null == loginResult
          ? _value.loginResult
          : loginResult // ignore: cast_nullable_to_non_nullable
              as LoginResult,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.code,
      required this.isSubmitting,
      required this.loginResult});

  @override
  final String code;
  @override
  final bool isSubmitting;
  @override
  final LoginResult loginResult;

  @override
  String toString() {
    return 'LoginState(code: $code, isSubmitting: $isSubmitting, loginResult: $loginResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.loginResult, loginResult) ||
                other.loginResult == loginResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, isSubmitting, loginResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final String code,
      required final bool isSubmitting,
      required final LoginResult loginResult}) = _$_LoginState;

  @override
  String get code;
  @override
  bool get isSubmitting;
  @override
  LoginResult get loginResult;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(LoginFailReason reason) failure,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(LoginFailReason reason)? failure,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(LoginFailReason reason)? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultCopyWith<$Res> {
  factory $LoginResultCopyWith(
          LoginResult value, $Res Function(LoginResult) then) =
      _$LoginResultCopyWithImpl<$Res, LoginResult>;
}

/// @nodoc
class _$LoginResultCopyWithImpl<$Res, $Val extends LoginResult>
    implements $LoginResultCopyWith<$Res> {
  _$LoginResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginSuccessCopyWith<$Res> {
  factory _$$LoginSuccessCopyWith(
          _$LoginSuccess value, $Res Function(_$LoginSuccess) then) =
      __$$LoginSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$LoginSuccess>
    implements _$$LoginSuccessCopyWith<$Res> {
  __$$LoginSuccessCopyWithImpl(
      _$LoginSuccess _value, $Res Function(_$LoginSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSuccess implements LoginSuccess {
  const _$LoginSuccess();

  @override
  String toString() {
    return 'LoginResult.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(LoginFailReason reason) failure,
    required TResult Function() empty,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(LoginFailReason reason)? failure,
    TResult? Function()? empty,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(LoginFailReason reason)? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements LoginResult {
  const factory LoginSuccess() = _$LoginSuccess;
}

/// @nodoc
abstract class _$$LoginFailureCopyWith<$Res> {
  factory _$$LoginFailureCopyWith(
          _$LoginFailure value, $Res Function(_$LoginFailure) then) =
      __$$LoginFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginFailReason reason});

  $LoginFailReasonCopyWith<$Res> get reason;
}

/// @nodoc
class __$$LoginFailureCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$LoginFailure>
    implements _$$LoginFailureCopyWith<$Res> {
  __$$LoginFailureCopyWithImpl(
      _$LoginFailure _value, $Res Function(_$LoginFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$LoginFailure(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as LoginFailReason,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginFailReasonCopyWith<$Res> get reason {
    return $LoginFailReasonCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$LoginFailure implements LoginFailure {
  const _$LoginFailure({required this.reason});

  @override
  final LoginFailReason reason;

  @override
  String toString() {
    return 'LoginResult.failure(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailure &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureCopyWith<_$LoginFailure> get copyWith =>
      __$$LoginFailureCopyWithImpl<_$LoginFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(LoginFailReason reason) failure,
    required TResult Function() empty,
  }) {
    return failure(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(LoginFailReason reason)? failure,
    TResult? Function()? empty,
  }) {
    return failure?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(LoginFailReason reason)? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginEmpty value) empty,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginEmpty value)? empty,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LoginFailure implements LoginResult {
  const factory LoginFailure({required final LoginFailReason reason}) =
      _$LoginFailure;

  LoginFailReason get reason;
  @JsonKey(ignore: true)
  _$$LoginFailureCopyWith<_$LoginFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEmptyCopyWith<$Res> {
  factory _$$LoginEmptyCopyWith(
          _$LoginEmpty value, $Res Function(_$LoginEmpty) then) =
      __$$LoginEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEmptyCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$LoginEmpty>
    implements _$$LoginEmptyCopyWith<$Res> {
  __$$LoginEmptyCopyWithImpl(
      _$LoginEmpty _value, $Res Function(_$LoginEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginEmpty implements LoginEmpty {
  const _$LoginEmpty();

  @override
  String toString() {
    return 'LoginResult.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(LoginFailReason reason) failure,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(LoginFailReason reason)? failure,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(LoginFailReason reason)? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class LoginEmpty implements LoginResult {
  const factory LoginEmpty() = _$LoginEmpty;
}

/// @nodoc
mixin _$LoginFailReason {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginServerError value) serverError,
    required TResult Function(LoginNoConnectionError value) noInternet,
    required TResult Function(LoginInvalidCredentials value) invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginServerError value)? serverError,
    TResult? Function(LoginNoConnectionError value)? noInternet,
    TResult? Function(LoginInvalidCredentials value)? invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginServerError value)? serverError,
    TResult Function(LoginNoConnectionError value)? noInternet,
    TResult Function(LoginInvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFailReasonCopyWith<$Res> {
  factory $LoginFailReasonCopyWith(
          LoginFailReason value, $Res Function(LoginFailReason) then) =
      _$LoginFailReasonCopyWithImpl<$Res, LoginFailReason>;
}

/// @nodoc
class _$LoginFailReasonCopyWithImpl<$Res, $Val extends LoginFailReason>
    implements $LoginFailReasonCopyWith<$Res> {
  _$LoginFailReasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginServerErrorCopyWith<$Res> {
  factory _$$LoginServerErrorCopyWith(
          _$LoginServerError value, $Res Function(_$LoginServerError) then) =
      __$$LoginServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginServerErrorCopyWithImpl<$Res>
    extends _$LoginFailReasonCopyWithImpl<$Res, _$LoginServerError>
    implements _$$LoginServerErrorCopyWith<$Res> {
  __$$LoginServerErrorCopyWithImpl(
      _$LoginServerError _value, $Res Function(_$LoginServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginServerError implements LoginServerError {
  const _$LoginServerError();

  @override
  String toString() {
    return 'LoginFailReason.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() invalidCredentials,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? invalidCredentials,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginServerError value) serverError,
    required TResult Function(LoginNoConnectionError value) noInternet,
    required TResult Function(LoginInvalidCredentials value) invalidCredentials,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginServerError value)? serverError,
    TResult? Function(LoginNoConnectionError value)? noInternet,
    TResult? Function(LoginInvalidCredentials value)? invalidCredentials,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginServerError value)? serverError,
    TResult Function(LoginNoConnectionError value)? noInternet,
    TResult Function(LoginInvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class LoginServerError implements LoginFailReason {
  const factory LoginServerError() = _$LoginServerError;
}

/// @nodoc
abstract class _$$LoginNoConnectionErrorCopyWith<$Res> {
  factory _$$LoginNoConnectionErrorCopyWith(_$LoginNoConnectionError value,
          $Res Function(_$LoginNoConnectionError) then) =
      __$$LoginNoConnectionErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginNoConnectionErrorCopyWithImpl<$Res>
    extends _$LoginFailReasonCopyWithImpl<$Res, _$LoginNoConnectionError>
    implements _$$LoginNoConnectionErrorCopyWith<$Res> {
  __$$LoginNoConnectionErrorCopyWithImpl(_$LoginNoConnectionError _value,
      $Res Function(_$LoginNoConnectionError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginNoConnectionError implements LoginNoConnectionError {
  const _$LoginNoConnectionError();

  @override
  String toString() {
    return 'LoginFailReason.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginNoConnectionError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() invalidCredentials,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? invalidCredentials,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginServerError value) serverError,
    required TResult Function(LoginNoConnectionError value) noInternet,
    required TResult Function(LoginInvalidCredentials value) invalidCredentials,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginServerError value)? serverError,
    TResult? Function(LoginNoConnectionError value)? noInternet,
    TResult? Function(LoginInvalidCredentials value)? invalidCredentials,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginServerError value)? serverError,
    TResult Function(LoginNoConnectionError value)? noInternet,
    TResult Function(LoginInvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class LoginNoConnectionError implements LoginFailReason {
  const factory LoginNoConnectionError() = _$LoginNoConnectionError;
}

/// @nodoc
abstract class _$$LoginInvalidCredentialsCopyWith<$Res> {
  factory _$$LoginInvalidCredentialsCopyWith(_$LoginInvalidCredentials value,
          $Res Function(_$LoginInvalidCredentials) then) =
      __$$LoginInvalidCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInvalidCredentialsCopyWithImpl<$Res>
    extends _$LoginFailReasonCopyWithImpl<$Res, _$LoginInvalidCredentials>
    implements _$$LoginInvalidCredentialsCopyWith<$Res> {
  __$$LoginInvalidCredentialsCopyWithImpl(_$LoginInvalidCredentials _value,
      $Res Function(_$LoginInvalidCredentials) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginInvalidCredentials implements LoginInvalidCredentials {
  const _$LoginInvalidCredentials();

  @override
  String toString() {
    return 'LoginFailReason.invalidCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginInvalidCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() invalidCredentials,
  }) {
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? invalidCredentials,
  }) {
    return invalidCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginServerError value) serverError,
    required TResult Function(LoginNoConnectionError value) noInternet,
    required TResult Function(LoginInvalidCredentials value) invalidCredentials,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginServerError value)? serverError,
    TResult? Function(LoginNoConnectionError value)? noInternet,
    TResult? Function(LoginInvalidCredentials value)? invalidCredentials,
  }) {
    return invalidCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginServerError value)? serverError,
    TResult Function(LoginNoConnectionError value)? noInternet,
    TResult Function(LoginInvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class LoginInvalidCredentials implements LoginFailReason {
  const factory LoginInvalidCredentials() = _$LoginInvalidCredentials;
}
