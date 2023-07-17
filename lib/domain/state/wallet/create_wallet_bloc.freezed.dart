// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateWalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(String value) updateCurrency,
    required TResult Function() saveWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(String value)? updateCurrency,
    TResult? Function()? saveWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(String value)? updateCurrency,
    TResult Function()? saveWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWalletEventCopyWith<$Res> {
  factory $CreateWalletEventCopyWith(
          CreateWalletEvent value, $Res Function(CreateWalletEvent) then) =
      _$CreateWalletEventCopyWithImpl<$Res, CreateWalletEvent>;
}

/// @nodoc
class _$CreateWalletEventCopyWithImpl<$Res, $Val extends CreateWalletEvent>
    implements $CreateWalletEventCopyWith<$Res> {
  _$CreateWalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateTitleWalletEventCopyWith<$Res> {
  factory _$$UpdateTitleWalletEventCopyWith(_$UpdateTitleWalletEvent value,
          $Res Function(_$UpdateTitleWalletEvent) then) =
      __$$UpdateTitleWalletEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateTitleWalletEventCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res, _$UpdateTitleWalletEvent>
    implements _$$UpdateTitleWalletEventCopyWith<$Res> {
  __$$UpdateTitleWalletEventCopyWithImpl(_$UpdateTitleWalletEvent _value,
      $Res Function(_$UpdateTitleWalletEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateTitleWalletEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateTitleWalletEvent extends UpdateTitleWalletEvent {
  const _$UpdateTitleWalletEvent(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'CreateWalletEvent.updateTitle(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTitleWalletEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTitleWalletEventCopyWith<_$UpdateTitleWalletEvent> get copyWith =>
      __$$UpdateTitleWalletEventCopyWithImpl<_$UpdateTitleWalletEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(String value) updateCurrency,
    required TResult Function() saveWallet,
  }) {
    return updateTitle(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(String value)? updateCurrency,
    TResult? Function()? saveWallet,
  }) {
    return updateTitle?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(String value)? updateCurrency,
    TResult Function()? saveWallet,
    required TResult orElse(),
  }) {
    if (updateTitle != null) {
      return updateTitle(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
  }) {
    return updateTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
  }) {
    return updateTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    required TResult orElse(),
  }) {
    if (updateTitle != null) {
      return updateTitle(this);
    }
    return orElse();
  }
}

abstract class UpdateTitleWalletEvent extends CreateWalletEvent {
  const factory UpdateTitleWalletEvent(final String value) =
      _$UpdateTitleWalletEvent;
  const UpdateTitleWalletEvent._() : super._();

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateTitleWalletEventCopyWith<_$UpdateTitleWalletEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDiscriptionWalletEventCopyWith<$Res> {
  factory _$$UpdateDiscriptionWalletEventCopyWith(
          _$UpdateDiscriptionWalletEvent value,
          $Res Function(_$UpdateDiscriptionWalletEvent) then) =
      __$$UpdateDiscriptionWalletEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateDiscriptionWalletEventCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res,
        _$UpdateDiscriptionWalletEvent>
    implements _$$UpdateDiscriptionWalletEventCopyWith<$Res> {
  __$$UpdateDiscriptionWalletEventCopyWithImpl(
      _$UpdateDiscriptionWalletEvent _value,
      $Res Function(_$UpdateDiscriptionWalletEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateDiscriptionWalletEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateDiscriptionWalletEvent extends UpdateDiscriptionWalletEvent {
  const _$UpdateDiscriptionWalletEvent(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'CreateWalletEvent.updateDiscription(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDiscriptionWalletEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDiscriptionWalletEventCopyWith<_$UpdateDiscriptionWalletEvent>
      get copyWith => __$$UpdateDiscriptionWalletEventCopyWithImpl<
          _$UpdateDiscriptionWalletEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(String value) updateCurrency,
    required TResult Function() saveWallet,
  }) {
    return updateDiscription(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(String value)? updateCurrency,
    TResult? Function()? saveWallet,
  }) {
    return updateDiscription?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(String value)? updateCurrency,
    TResult Function()? saveWallet,
    required TResult orElse(),
  }) {
    if (updateDiscription != null) {
      return updateDiscription(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
  }) {
    return updateDiscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
  }) {
    return updateDiscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    required TResult orElse(),
  }) {
    if (updateDiscription != null) {
      return updateDiscription(this);
    }
    return orElse();
  }
}

abstract class UpdateDiscriptionWalletEvent extends CreateWalletEvent {
  const factory UpdateDiscriptionWalletEvent(final String value) =
      _$UpdateDiscriptionWalletEvent;
  const UpdateDiscriptionWalletEvent._() : super._();

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateDiscriptionWalletEventCopyWith<_$UpdateDiscriptionWalletEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBalanceWalletEventCopyWith<$Res> {
  factory _$$UpdateBalanceWalletEventCopyWith(_$UpdateBalanceWalletEvent value,
          $Res Function(_$UpdateBalanceWalletEvent) then) =
      __$$UpdateBalanceWalletEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateBalanceWalletEventCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res, _$UpdateBalanceWalletEvent>
    implements _$$UpdateBalanceWalletEventCopyWith<$Res> {
  __$$UpdateBalanceWalletEventCopyWithImpl(_$UpdateBalanceWalletEvent _value,
      $Res Function(_$UpdateBalanceWalletEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateBalanceWalletEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateBalanceWalletEvent extends UpdateBalanceWalletEvent {
  const _$UpdateBalanceWalletEvent(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'CreateWalletEvent.updateBalance(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBalanceWalletEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBalanceWalletEventCopyWith<_$UpdateBalanceWalletEvent>
      get copyWith =>
          __$$UpdateBalanceWalletEventCopyWithImpl<_$UpdateBalanceWalletEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(String value) updateCurrency,
    required TResult Function() saveWallet,
  }) {
    return updateBalance(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(String value)? updateCurrency,
    TResult? Function()? saveWallet,
  }) {
    return updateBalance?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(String value)? updateCurrency,
    TResult Function()? saveWallet,
    required TResult orElse(),
  }) {
    if (updateBalance != null) {
      return updateBalance(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
  }) {
    return updateBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
  }) {
    return updateBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    required TResult orElse(),
  }) {
    if (updateBalance != null) {
      return updateBalance(this);
    }
    return orElse();
  }
}

abstract class UpdateBalanceWalletEvent extends CreateWalletEvent {
  const factory UpdateBalanceWalletEvent(final String value) =
      _$UpdateBalanceWalletEvent;
  const UpdateBalanceWalletEvent._() : super._();

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateBalanceWalletEventCopyWith<_$UpdateBalanceWalletEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrencyWalletEventCopyWith<$Res> {
  factory _$$UpdateCurrencyWalletEventCopyWith(
          _$UpdateCurrencyWalletEvent value,
          $Res Function(_$UpdateCurrencyWalletEvent) then) =
      __$$UpdateCurrencyWalletEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateCurrencyWalletEventCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res, _$UpdateCurrencyWalletEvent>
    implements _$$UpdateCurrencyWalletEventCopyWith<$Res> {
  __$$UpdateCurrencyWalletEventCopyWithImpl(_$UpdateCurrencyWalletEvent _value,
      $Res Function(_$UpdateCurrencyWalletEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateCurrencyWalletEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCurrencyWalletEvent extends UpdateCurrencyWalletEvent {
  const _$UpdateCurrencyWalletEvent(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'CreateWalletEvent.updateCurrency(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrencyWalletEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrencyWalletEventCopyWith<_$UpdateCurrencyWalletEvent>
      get copyWith => __$$UpdateCurrencyWalletEventCopyWithImpl<
          _$UpdateCurrencyWalletEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(String value) updateCurrency,
    required TResult Function() saveWallet,
  }) {
    return updateCurrency(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(String value)? updateCurrency,
    TResult? Function()? saveWallet,
  }) {
    return updateCurrency?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(String value)? updateCurrency,
    TResult Function()? saveWallet,
    required TResult orElse(),
  }) {
    if (updateCurrency != null) {
      return updateCurrency(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
  }) {
    return updateCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
  }) {
    return updateCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    required TResult orElse(),
  }) {
    if (updateCurrency != null) {
      return updateCurrency(this);
    }
    return orElse();
  }
}

abstract class UpdateCurrencyWalletEvent extends CreateWalletEvent {
  const factory UpdateCurrencyWalletEvent(final String value) =
      _$UpdateCurrencyWalletEvent;
  const UpdateCurrencyWalletEvent._() : super._();

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateCurrencyWalletEventCopyWith<_$UpdateCurrencyWalletEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveWalletWalletEventCopyWith<$Res> {
  factory _$$SaveWalletWalletEventCopyWith(_$SaveWalletWalletEvent value,
          $Res Function(_$SaveWalletWalletEvent) then) =
      __$$SaveWalletWalletEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveWalletWalletEventCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res, _$SaveWalletWalletEvent>
    implements _$$SaveWalletWalletEventCopyWith<$Res> {
  __$$SaveWalletWalletEventCopyWithImpl(_$SaveWalletWalletEvent _value,
      $Res Function(_$SaveWalletWalletEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveWalletWalletEvent extends SaveWalletWalletEvent {
  const _$SaveWalletWalletEvent() : super._();

  @override
  String toString() {
    return 'CreateWalletEvent.saveWallet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveWalletWalletEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(String value) updateCurrency,
    required TResult Function() saveWallet,
  }) {
    return saveWallet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(String value)? updateCurrency,
    TResult? Function()? saveWallet,
  }) {
    return saveWallet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(String value)? updateCurrency,
    TResult Function()? saveWallet,
    required TResult orElse(),
  }) {
    if (saveWallet != null) {
      return saveWallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
  }) {
    return saveWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
  }) {
    return saveWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    required TResult orElse(),
  }) {
    if (saveWallet != null) {
      return saveWallet(this);
    }
    return orElse();
  }
}

abstract class SaveWalletWalletEvent extends CreateWalletEvent {
  const factory SaveWalletWalletEvent() = _$SaveWalletWalletEvent;
  const SaveWalletWalletEvent._() : super._();
}

/// @nodoc
mixin _$CreateWalletState {
  String get title => throw _privateConstructorUsedError;
  String get discription => throw _privateConstructorUsedError;
  String get balance => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateWalletStateCopyWith<CreateWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWalletStateCopyWith<$Res> {
  factory $CreateWalletStateCopyWith(
          CreateWalletState value, $Res Function(CreateWalletState) then) =
      _$CreateWalletStateCopyWithImpl<$Res, CreateWalletState>;
  @useResult
  $Res call(
      {String title, String discription, String balance, String currency});
}

/// @nodoc
class _$CreateWalletStateCopyWithImpl<$Res, $Val extends CreateWalletState>
    implements $CreateWalletStateCopyWith<$Res> {
  _$CreateWalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? discription = null,
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      discription: null == discription
          ? _value.discription
          : discription // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateWalletStateCopyWith<$Res>
    implements $CreateWalletStateCopyWith<$Res> {
  factory _$$_CreateWalletStateCopyWith(_$_CreateWalletState value,
          $Res Function(_$_CreateWalletState) then) =
      __$$_CreateWalletStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String discription, String balance, String currency});
}

/// @nodoc
class __$$_CreateWalletStateCopyWithImpl<$Res>
    extends _$CreateWalletStateCopyWithImpl<$Res, _$_CreateWalletState>
    implements _$$_CreateWalletStateCopyWith<$Res> {
  __$$_CreateWalletStateCopyWithImpl(
      _$_CreateWalletState _value, $Res Function(_$_CreateWalletState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? discription = null,
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_$_CreateWalletState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      discription: null == discription
          ? _value.discription
          : discription // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateWalletState implements _CreateWalletState {
  const _$_CreateWalletState(
      {required this.title,
      required this.discription,
      required this.balance,
      required this.currency});

  @override
  final String title;
  @override
  final String discription;
  @override
  final String balance;
  @override
  final String currency;

  @override
  String toString() {
    return 'CreateWalletState(title: $title, discription: $discription, balance: $balance, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateWalletState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.discription, discription) ||
                other.discription == discription) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, discription, balance, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateWalletStateCopyWith<_$_CreateWalletState> get copyWith =>
      __$$_CreateWalletStateCopyWithImpl<_$_CreateWalletState>(
          this, _$identity);
}

abstract class _CreateWalletState implements CreateWalletState {
  const factory _CreateWalletState(
      {required final String title,
      required final String discription,
      required final String balance,
      required final String currency}) = _$_CreateWalletState;

  @override
  String get title;
  @override
  String get discription;
  @override
  String get balance;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$_CreateWalletStateCopyWith<_$_CreateWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
