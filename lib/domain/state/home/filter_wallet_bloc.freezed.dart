// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterWalletEvent {
  int? get walletId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? walletId) setWalletId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? walletId)? setWalletId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? walletId)? setWalletId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetWalletIdFilterWalletEvent value) setWalletId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetWalletIdFilterWalletEvent value)? setWalletId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetWalletIdFilterWalletEvent value)? setWalletId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterWalletEventCopyWith<FilterWalletEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterWalletEventCopyWith<$Res> {
  factory $FilterWalletEventCopyWith(
          FilterWalletEvent value, $Res Function(FilterWalletEvent) then) =
      _$FilterWalletEventCopyWithImpl<$Res, FilterWalletEvent>;
  @useResult
  $Res call({int? walletId});
}

/// @nodoc
class _$FilterWalletEventCopyWithImpl<$Res, $Val extends FilterWalletEvent>
    implements $FilterWalletEventCopyWith<$Res> {
  _$FilterWalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = freezed,
  }) {
    return _then(_value.copyWith(
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetWalletIdFilterWalletEventCopyWith<$Res>
    implements $FilterWalletEventCopyWith<$Res> {
  factory _$$SetWalletIdFilterWalletEventCopyWith(
          _$SetWalletIdFilterWalletEvent value,
          $Res Function(_$SetWalletIdFilterWalletEvent) then) =
      __$$SetWalletIdFilterWalletEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? walletId});
}

/// @nodoc
class __$$SetWalletIdFilterWalletEventCopyWithImpl<$Res>
    extends _$FilterWalletEventCopyWithImpl<$Res,
        _$SetWalletIdFilterWalletEvent>
    implements _$$SetWalletIdFilterWalletEventCopyWith<$Res> {
  __$$SetWalletIdFilterWalletEventCopyWithImpl(
      _$SetWalletIdFilterWalletEvent _value,
      $Res Function(_$SetWalletIdFilterWalletEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = freezed,
  }) {
    return _then(_$SetWalletIdFilterWalletEvent(
      freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SetWalletIdFilterWalletEvent extends SetWalletIdFilterWalletEvent {
  const _$SetWalletIdFilterWalletEvent(this.walletId) : super._();

  @override
  final int? walletId;

  @override
  String toString() {
    return 'FilterWalletEvent.setWalletId(walletId: $walletId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetWalletIdFilterWalletEvent &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetWalletIdFilterWalletEventCopyWith<_$SetWalletIdFilterWalletEvent>
      get copyWith => __$$SetWalletIdFilterWalletEventCopyWithImpl<
          _$SetWalletIdFilterWalletEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? walletId) setWalletId,
  }) {
    return setWalletId(walletId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? walletId)? setWalletId,
  }) {
    return setWalletId?.call(walletId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? walletId)? setWalletId,
    required TResult orElse(),
  }) {
    if (setWalletId != null) {
      return setWalletId(walletId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetWalletIdFilterWalletEvent value) setWalletId,
  }) {
    return setWalletId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetWalletIdFilterWalletEvent value)? setWalletId,
  }) {
    return setWalletId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetWalletIdFilterWalletEvent value)? setWalletId,
    required TResult orElse(),
  }) {
    if (setWalletId != null) {
      return setWalletId(this);
    }
    return orElse();
  }
}

abstract class SetWalletIdFilterWalletEvent extends FilterWalletEvent {
  const factory SetWalletIdFilterWalletEvent(final int? walletId) =
      _$SetWalletIdFilterWalletEvent;
  const SetWalletIdFilterWalletEvent._() : super._();

  @override
  int? get walletId;
  @override
  @JsonKey(ignore: true)
  _$$SetWalletIdFilterWalletEventCopyWith<_$SetWalletIdFilterWalletEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterWalletState {
  int? get walletId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterWalletStateCopyWith<FilterWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterWalletStateCopyWith<$Res> {
  factory $FilterWalletStateCopyWith(
          FilterWalletState value, $Res Function(FilterWalletState) then) =
      _$FilterWalletStateCopyWithImpl<$Res, FilterWalletState>;
  @useResult
  $Res call({int? walletId});
}

/// @nodoc
class _$FilterWalletStateCopyWithImpl<$Res, $Val extends FilterWalletState>
    implements $FilterWalletStateCopyWith<$Res> {
  _$FilterWalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = freezed,
  }) {
    return _then(_value.copyWith(
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterWalletStateCopyWith<$Res>
    implements $FilterWalletStateCopyWith<$Res> {
  factory _$$_FilterWalletStateCopyWith(_$_FilterWalletState value,
          $Res Function(_$_FilterWalletState) then) =
      __$$_FilterWalletStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? walletId});
}

/// @nodoc
class __$$_FilterWalletStateCopyWithImpl<$Res>
    extends _$FilterWalletStateCopyWithImpl<$Res, _$_FilterWalletState>
    implements _$$_FilterWalletStateCopyWith<$Res> {
  __$$_FilterWalletStateCopyWithImpl(
      _$_FilterWalletState _value, $Res Function(_$_FilterWalletState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = freezed,
  }) {
    return _then(_$_FilterWalletState(
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_FilterWalletState implements _FilterWalletState {
  const _$_FilterWalletState({this.walletId});

  @override
  final int? walletId;

  @override
  String toString() {
    return 'FilterWalletState(walletId: $walletId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterWalletState &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterWalletStateCopyWith<_$_FilterWalletState> get copyWith =>
      __$$_FilterWalletStateCopyWithImpl<_$_FilterWalletState>(
          this, _$identity);
}

abstract class _FilterWalletState implements FilterWalletState {
  const factory _FilterWalletState({final int? walletId}) =
      _$_FilterWalletState;

  @override
  int? get walletId;
  @override
  @JsonKey(ignore: true)
  _$$_FilterWalletStateCopyWith<_$_FilterWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
