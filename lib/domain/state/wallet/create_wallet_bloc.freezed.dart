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
    required TResult Function(String title, String description, String balance)
        editCard,
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(Currency value) updateCurrency,
    required TResult Function() saveWallet,
    required TResult Function(String value) usdUpdateButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String balance)?
        editCard,
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(Currency value)? updateCurrency,
    TResult? Function()? saveWallet,
    TResult? Function(String value)? usdUpdateButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String balance)?
        editCard,
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(Currency value)? updateCurrency,
    TResult Function()? saveWallet,
    TResult Function(String value)? usdUpdateButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditCardeWalletEvent value) editCard,
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
    required TResult Function(UsdUpdateButtonEvent value) usdUpdateButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditCardeWalletEvent value)? editCard,
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
    TResult? Function(UsdUpdateButtonEvent value)? usdUpdateButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditCardeWalletEvent value)? editCard,
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    TResult Function(UsdUpdateButtonEvent value)? usdUpdateButton,
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
abstract class _$$EditCardeWalletEventCopyWith<$Res> {
  factory _$$EditCardeWalletEventCopyWith(_$EditCardeWalletEvent value,
          $Res Function(_$EditCardeWalletEvent) then) =
      __$$EditCardeWalletEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description, String balance});
}

/// @nodoc
class __$$EditCardeWalletEventCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res, _$EditCardeWalletEvent>
    implements _$$EditCardeWalletEventCopyWith<$Res> {
  __$$EditCardeWalletEventCopyWithImpl(_$EditCardeWalletEvent _value,
      $Res Function(_$EditCardeWalletEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? balance = null,
  }) {
    return _then(_$EditCardeWalletEvent(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditCardeWalletEvent extends EditCardeWalletEvent {
  const _$EditCardeWalletEvent(this.title, this.description, this.balance)
      : super._();

  @override
  final String title;
  @override
  final String description;
  @override
  final String balance;

  @override
  String toString() {
    return 'CreateWalletEvent.editCard(title: $title, description: $description, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCardeWalletEvent &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCardeWalletEventCopyWith<_$EditCardeWalletEvent> get copyWith =>
      __$$EditCardeWalletEventCopyWithImpl<_$EditCardeWalletEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description, String balance)
        editCard,
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(Currency value) updateCurrency,
    required TResult Function() saveWallet,
    required TResult Function(String value) usdUpdateButton,
  }) {
    return editCard(title, description, balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String balance)?
        editCard,
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(Currency value)? updateCurrency,
    TResult? Function()? saveWallet,
    TResult? Function(String value)? usdUpdateButton,
  }) {
    return editCard?.call(title, description, balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String balance)?
        editCard,
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(Currency value)? updateCurrency,
    TResult Function()? saveWallet,
    TResult Function(String value)? usdUpdateButton,
    required TResult orElse(),
  }) {
    if (editCard != null) {
      return editCard(title, description, balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditCardeWalletEvent value) editCard,
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
    required TResult Function(UsdUpdateButtonEvent value) usdUpdateButton,
  }) {
    return editCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditCardeWalletEvent value)? editCard,
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
    TResult? Function(UsdUpdateButtonEvent value)? usdUpdateButton,
  }) {
    return editCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditCardeWalletEvent value)? editCard,
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    TResult Function(UsdUpdateButtonEvent value)? usdUpdateButton,
    required TResult orElse(),
  }) {
    if (editCard != null) {
      return editCard(this);
    }
    return orElse();
  }
}

abstract class EditCardeWalletEvent extends CreateWalletEvent {
  const factory EditCardeWalletEvent(
          final String title, final String description, final String balance) =
      _$EditCardeWalletEvent;
  const EditCardeWalletEvent._() : super._();

  String get title;
  String get description;
  String get balance;
  @JsonKey(ignore: true)
  _$$EditCardeWalletEventCopyWith<_$EditCardeWalletEvent> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String title, String description, String balance)
        editCard,
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(Currency value) updateCurrency,
    required TResult Function() saveWallet,
    required TResult Function(String value) usdUpdateButton,
  }) {
    return updateTitle(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String balance)?
        editCard,
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(Currency value)? updateCurrency,
    TResult? Function()? saveWallet,
    TResult? Function(String value)? usdUpdateButton,
  }) {
    return updateTitle?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String balance)?
        editCard,
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(Currency value)? updateCurrency,
    TResult Function()? saveWallet,
    TResult Function(String value)? usdUpdateButton,
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
    required TResult Function(EditCardeWalletEvent value) editCard,
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
    required TResult Function(UsdUpdateButtonEvent value) usdUpdateButton,
  }) {
    return updateTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditCardeWalletEvent value)? editCard,
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
    TResult? Function(UsdUpdateButtonEvent value)? usdUpdateButton,
  }) {
    return updateTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditCardeWalletEvent value)? editCard,
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    TResult Function(UsdUpdateButtonEvent value)? usdUpdateButton,
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
    required TResult Function(String title, String description, String balance)
        editCard,
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(Currency value) updateCurrency,
    required TResult Function() saveWallet,
    required TResult Function(String value) usdUpdateButton,
  }) {
    return updateDiscription(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String balance)?
        editCard,
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(Currency value)? updateCurrency,
    TResult? Function()? saveWallet,
    TResult? Function(String value)? usdUpdateButton,
  }) {
    return updateDiscription?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String balance)?
        editCard,
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(Currency value)? updateCurrency,
    TResult Function()? saveWallet,
    TResult Function(String value)? usdUpdateButton,
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
    required TResult Function(EditCardeWalletEvent value) editCard,
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
    required TResult Function(UsdUpdateButtonEvent value) usdUpdateButton,
  }) {
    return updateDiscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditCardeWalletEvent value)? editCard,
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
    TResult? Function(UsdUpdateButtonEvent value)? usdUpdateButton,
  }) {
    return updateDiscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditCardeWalletEvent value)? editCard,
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    TResult Function(UsdUpdateButtonEvent value)? usdUpdateButton,
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
    required TResult Function(String title, String description, String balance)
        editCard,
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(Currency value) updateCurrency,
    required TResult Function() saveWallet,
    required TResult Function(String value) usdUpdateButton,
  }) {
    return updateBalance(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String balance)?
        editCard,
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(Currency value)? updateCurrency,
    TResult? Function()? saveWallet,
    TResult? Function(String value)? usdUpdateButton,
  }) {
    return updateBalance?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String balance)?
        editCard,
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(Currency value)? updateCurrency,
    TResult Function()? saveWallet,
    TResult Function(String value)? usdUpdateButton,
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
    required TResult Function(EditCardeWalletEvent value) editCard,
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
    required TResult Function(UsdUpdateButtonEvent value) usdUpdateButton,
  }) {
    return updateBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditCardeWalletEvent value)? editCard,
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
    TResult? Function(UsdUpdateButtonEvent value)? usdUpdateButton,
  }) {
    return updateBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditCardeWalletEvent value)? editCard,
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    TResult Function(UsdUpdateButtonEvent value)? usdUpdateButton,
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
  $Res call({Currency value});
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
              as Currency,
    ));
  }
}

/// @nodoc

class _$UpdateCurrencyWalletEvent extends UpdateCurrencyWalletEvent {
  const _$UpdateCurrencyWalletEvent(this.value) : super._();

  @override
  final Currency value;

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
    required TResult Function(String title, String description, String balance)
        editCard,
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(Currency value) updateCurrency,
    required TResult Function() saveWallet,
    required TResult Function(String value) usdUpdateButton,
  }) {
    return updateCurrency(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String balance)?
        editCard,
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(Currency value)? updateCurrency,
    TResult? Function()? saveWallet,
    TResult? Function(String value)? usdUpdateButton,
  }) {
    return updateCurrency?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String balance)?
        editCard,
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(Currency value)? updateCurrency,
    TResult Function()? saveWallet,
    TResult Function(String value)? usdUpdateButton,
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
    required TResult Function(EditCardeWalletEvent value) editCard,
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
    required TResult Function(UsdUpdateButtonEvent value) usdUpdateButton,
  }) {
    return updateCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditCardeWalletEvent value)? editCard,
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
    TResult? Function(UsdUpdateButtonEvent value)? usdUpdateButton,
  }) {
    return updateCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditCardeWalletEvent value)? editCard,
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    TResult Function(UsdUpdateButtonEvent value)? usdUpdateButton,
    required TResult orElse(),
  }) {
    if (updateCurrency != null) {
      return updateCurrency(this);
    }
    return orElse();
  }
}

abstract class UpdateCurrencyWalletEvent extends CreateWalletEvent {
  const factory UpdateCurrencyWalletEvent(final Currency value) =
      _$UpdateCurrencyWalletEvent;
  const UpdateCurrencyWalletEvent._() : super._();

  Currency get value;
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
    required TResult Function(String title, String description, String balance)
        editCard,
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(Currency value) updateCurrency,
    required TResult Function() saveWallet,
    required TResult Function(String value) usdUpdateButton,
  }) {
    return saveWallet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String balance)?
        editCard,
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(Currency value)? updateCurrency,
    TResult? Function()? saveWallet,
    TResult? Function(String value)? usdUpdateButton,
  }) {
    return saveWallet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String balance)?
        editCard,
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(Currency value)? updateCurrency,
    TResult Function()? saveWallet,
    TResult Function(String value)? usdUpdateButton,
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
    required TResult Function(EditCardeWalletEvent value) editCard,
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
    required TResult Function(UsdUpdateButtonEvent value) usdUpdateButton,
  }) {
    return saveWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditCardeWalletEvent value)? editCard,
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
    TResult? Function(UsdUpdateButtonEvent value)? usdUpdateButton,
  }) {
    return saveWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditCardeWalletEvent value)? editCard,
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    TResult Function(UsdUpdateButtonEvent value)? usdUpdateButton,
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
abstract class _$$UsdUpdateButtonEventCopyWith<$Res> {
  factory _$$UsdUpdateButtonEventCopyWith(_$UsdUpdateButtonEvent value,
          $Res Function(_$UsdUpdateButtonEvent) then) =
      __$$UsdUpdateButtonEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UsdUpdateButtonEventCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res, _$UsdUpdateButtonEvent>
    implements _$$UsdUpdateButtonEventCopyWith<$Res> {
  __$$UsdUpdateButtonEventCopyWithImpl(_$UsdUpdateButtonEvent _value,
      $Res Function(_$UsdUpdateButtonEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UsdUpdateButtonEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsdUpdateButtonEvent extends UsdUpdateButtonEvent {
  const _$UsdUpdateButtonEvent(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'CreateWalletEvent.usdUpdateButton(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsdUpdateButtonEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsdUpdateButtonEventCopyWith<_$UsdUpdateButtonEvent> get copyWith =>
      __$$UsdUpdateButtonEventCopyWithImpl<_$UsdUpdateButtonEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description, String balance)
        editCard,
    required TResult Function(String value) updateTitle,
    required TResult Function(String value) updateDiscription,
    required TResult Function(String value) updateBalance,
    required TResult Function(Currency value) updateCurrency,
    required TResult Function() saveWallet,
    required TResult Function(String value) usdUpdateButton,
  }) {
    return usdUpdateButton(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String balance)?
        editCard,
    TResult? Function(String value)? updateTitle,
    TResult? Function(String value)? updateDiscription,
    TResult? Function(String value)? updateBalance,
    TResult? Function(Currency value)? updateCurrency,
    TResult? Function()? saveWallet,
    TResult? Function(String value)? usdUpdateButton,
  }) {
    return usdUpdateButton?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String balance)?
        editCard,
    TResult Function(String value)? updateTitle,
    TResult Function(String value)? updateDiscription,
    TResult Function(String value)? updateBalance,
    TResult Function(Currency value)? updateCurrency,
    TResult Function()? saveWallet,
    TResult Function(String value)? usdUpdateButton,
    required TResult orElse(),
  }) {
    if (usdUpdateButton != null) {
      return usdUpdateButton(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditCardeWalletEvent value) editCard,
    required TResult Function(UpdateTitleWalletEvent value) updateTitle,
    required TResult Function(UpdateDiscriptionWalletEvent value)
        updateDiscription,
    required TResult Function(UpdateBalanceWalletEvent value) updateBalance,
    required TResult Function(UpdateCurrencyWalletEvent value) updateCurrency,
    required TResult Function(SaveWalletWalletEvent value) saveWallet,
    required TResult Function(UsdUpdateButtonEvent value) usdUpdateButton,
  }) {
    return usdUpdateButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditCardeWalletEvent value)? editCard,
    TResult? Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult? Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult? Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult? Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult? Function(SaveWalletWalletEvent value)? saveWallet,
    TResult? Function(UsdUpdateButtonEvent value)? usdUpdateButton,
  }) {
    return usdUpdateButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditCardeWalletEvent value)? editCard,
    TResult Function(UpdateTitleWalletEvent value)? updateTitle,
    TResult Function(UpdateDiscriptionWalletEvent value)? updateDiscription,
    TResult Function(UpdateBalanceWalletEvent value)? updateBalance,
    TResult Function(UpdateCurrencyWalletEvent value)? updateCurrency,
    TResult Function(SaveWalletWalletEvent value)? saveWallet,
    TResult Function(UsdUpdateButtonEvent value)? usdUpdateButton,
    required TResult orElse(),
  }) {
    if (usdUpdateButton != null) {
      return usdUpdateButton(this);
    }
    return orElse();
  }
}

abstract class UsdUpdateButtonEvent extends CreateWalletEvent {
  const factory UsdUpdateButtonEvent(final String value) =
      _$UsdUpdateButtonEvent;
  const UsdUpdateButtonEvent._() : super._();

  String get value;
  @JsonKey(ignore: true)
  _$$UsdUpdateButtonEventCopyWith<_$UsdUpdateButtonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateWalletState {
  String get name => throw _privateConstructorUsedError;
  String get wallet => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get balance => throw _privateConstructorUsedError;
  Currency get currency => throw _privateConstructorUsedError;
  bool get finish => throw _privateConstructorUsedError;

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
      {String name,
      String wallet,
      String title,
      String description,
      String balance,
      Currency currency,
      bool finish});
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
    Object? name = null,
    Object? wallet = null,
    Object? title = null,
    Object? description = null,
    Object? balance = null,
    Object? currency = null,
    Object? finish = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      finish: null == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {String name,
      String wallet,
      String title,
      String description,
      String balance,
      Currency currency,
      bool finish});
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
    Object? name = null,
    Object? wallet = null,
    Object? title = null,
    Object? description = null,
    Object? balance = null,
    Object? currency = null,
    Object? finish = null,
  }) {
    return _then(_$_CreateWalletState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      finish: null == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateWalletState implements _CreateWalletState {
  const _$_CreateWalletState(
      {required this.name,
      required this.wallet,
      required this.title,
      required this.description,
      required this.balance,
      required this.currency,
      required this.finish});

  @override
  final String name;
  @override
  final String wallet;
  @override
  final String title;
  @override
  final String description;
  @override
  final String balance;
  @override
  final Currency currency;
  @override
  final bool finish;

  @override
  String toString() {
    return 'CreateWalletState(name: $name, wallet: $wallet, title: $title, description: $description, balance: $balance, currency: $currency, finish: $finish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateWalletState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.finish, finish) || other.finish == finish));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, wallet, title, description, balance, currency, finish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateWalletStateCopyWith<_$_CreateWalletState> get copyWith =>
      __$$_CreateWalletStateCopyWithImpl<_$_CreateWalletState>(
          this, _$identity);
}

abstract class _CreateWalletState implements CreateWalletState {
  const factory _CreateWalletState(
      {required final String name,
      required final String wallet,
      required final String title,
      required final String description,
      required final String balance,
      required final Currency currency,
      required final bool finish}) = _$_CreateWalletState;

  @override
  String get name;
  @override
  String get wallet;
  @override
  String get title;
  @override
  String get description;
  @override
  String get balance;
  @override
  Currency get currency;
  @override
  bool get finish;
  @override
  @JsonKey(ignore: true)
  _$$_CreateWalletStateCopyWith<_$_CreateWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
