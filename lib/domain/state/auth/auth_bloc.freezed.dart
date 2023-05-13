// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitEvent value) init,
    required TResult Function(AuthLogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitEvent value)? init,
    TResult? Function(AuthLogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitEvent value)? init,
    TResult Function(AuthLogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthInitEventCopyWith<$Res> {
  factory _$$AuthInitEventCopyWith(
          _$AuthInitEvent value, $Res Function(_$AuthInitEvent) then) =
      __$$AuthInitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthInitEvent>
    implements _$$AuthInitEventCopyWith<$Res> {
  __$$AuthInitEventCopyWithImpl(
      _$AuthInitEvent _value, $Res Function(_$AuthInitEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitEvent extends AuthInitEvent {
  const _$AuthInitEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logout,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logout,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitEvent value) init,
    required TResult Function(AuthLogoutEvent value) logout,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitEvent value)? init,
    TResult? Function(AuthLogoutEvent value)? logout,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitEvent value)? init,
    TResult Function(AuthLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AuthInitEvent extends AuthEvent {
  const factory AuthInitEvent() = _$AuthInitEvent;
  const AuthInitEvent._() : super._();
}

/// @nodoc
abstract class _$$AuthLogoutEventCopyWith<$Res> {
  factory _$$AuthLogoutEventCopyWith(
          _$AuthLogoutEvent value, $Res Function(_$AuthLogoutEvent) then) =
      __$$AuthLogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLogoutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLogoutEvent>
    implements _$$AuthLogoutEventCopyWith<$Res> {
  __$$AuthLogoutEventCopyWithImpl(
      _$AuthLogoutEvent _value, $Res Function(_$AuthLogoutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLogoutEvent extends AuthLogoutEvent {
  const _$AuthLogoutEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitEvent value) init,
    required TResult Function(AuthLogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitEvent value)? init,
    TResult? Function(AuthLogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitEvent value)? init,
    TResult Function(AuthLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthLogoutEvent extends AuthEvent {
  const factory AuthLogoutEvent() = _$AuthLogoutEvent;
  const AuthLogoutEvent._() : super._();
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) authed,
    required TResult Function() notAuthed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? authed,
    TResult? Function()? notAuthed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? authed,
    TResult Function()? notAuthed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthAuthedState value) authed,
    required TResult Function(AuthNotAuthedState value) notAuthed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAuthedState value)? authed,
    TResult? Function(AuthNotAuthedState value)? notAuthed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAuthedState value)? authed,
    TResult Function(AuthNotAuthedState value)? notAuthed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthAuthedStateCopyWith<$Res> {
  factory _$$AuthAuthedStateCopyWith(
          _$AuthAuthedState value, $Res Function(_$AuthAuthedState) then) =
      __$$AuthAuthedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$AuthAuthedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthAuthedState>
    implements _$$AuthAuthedStateCopyWith<$Res> {
  __$$AuthAuthedStateCopyWithImpl(
      _$AuthAuthedState _value, $Res Function(_$AuthAuthedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$AuthAuthedState(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthAuthedState implements AuthAuthedState {
  const _$AuthAuthedState({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'AuthState.authed(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAuthedState &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthAuthedStateCopyWith<_$AuthAuthedState> get copyWith =>
      __$$AuthAuthedStateCopyWithImpl<_$AuthAuthedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) authed,
    required TResult Function() notAuthed,
  }) {
    return authed(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? authed,
    TResult? Function()? notAuthed,
  }) {
    return authed?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? authed,
    TResult Function()? notAuthed,
    required TResult orElse(),
  }) {
    if (authed != null) {
      return authed(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthAuthedState value) authed,
    required TResult Function(AuthNotAuthedState value) notAuthed,
  }) {
    return authed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAuthedState value)? authed,
    TResult? Function(AuthNotAuthedState value)? notAuthed,
  }) {
    return authed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAuthedState value)? authed,
    TResult Function(AuthNotAuthedState value)? notAuthed,
    required TResult orElse(),
  }) {
    if (authed != null) {
      return authed(this);
    }
    return orElse();
  }
}

abstract class AuthAuthedState implements AuthState {
  const factory AuthAuthedState({required final String token}) =
      _$AuthAuthedState;

  String get token;
  @JsonKey(ignore: true)
  _$$AuthAuthedStateCopyWith<_$AuthAuthedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthNotAuthedStateCopyWith<$Res> {
  factory _$$AuthNotAuthedStateCopyWith(_$AuthNotAuthedState value,
          $Res Function(_$AuthNotAuthedState) then) =
      __$$AuthNotAuthedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthNotAuthedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthNotAuthedState>
    implements _$$AuthNotAuthedStateCopyWith<$Res> {
  __$$AuthNotAuthedStateCopyWithImpl(
      _$AuthNotAuthedState _value, $Res Function(_$AuthNotAuthedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthNotAuthedState implements AuthNotAuthedState {
  const _$AuthNotAuthedState();

  @override
  String toString() {
    return 'AuthState.notAuthed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthNotAuthedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) authed,
    required TResult Function() notAuthed,
  }) {
    return notAuthed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? authed,
    TResult? Function()? notAuthed,
  }) {
    return notAuthed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? authed,
    TResult Function()? notAuthed,
    required TResult orElse(),
  }) {
    if (notAuthed != null) {
      return notAuthed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthAuthedState value) authed,
    required TResult Function(AuthNotAuthedState value) notAuthed,
  }) {
    return notAuthed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAuthedState value)? authed,
    TResult? Function(AuthNotAuthedState value)? notAuthed,
  }) {
    return notAuthed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAuthedState value)? authed,
    TResult Function(AuthNotAuthedState value)? notAuthed,
    required TResult orElse(),
  }) {
    if (notAuthed != null) {
      return notAuthed(this);
    }
    return orElse();
  }
}

abstract class AuthNotAuthedState implements AuthState {
  const factory AuthNotAuthedState() = _$AuthNotAuthedState;
}
