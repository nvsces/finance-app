// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IncomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int? walletId) setWalletId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int? walletId)? setWalletId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int? walletId)? setWalletId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadIncomeEvent value) load,
    required TResult Function(SetWalletIdIncomeEvent value) setWalletId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadIncomeEvent value)? load,
    TResult? Function(SetWalletIdIncomeEvent value)? setWalletId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadIncomeEvent value)? load,
    TResult Function(SetWalletIdIncomeEvent value)? setWalletId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeEventCopyWith<$Res> {
  factory $IncomeEventCopyWith(
          IncomeEvent value, $Res Function(IncomeEvent) then) =
      _$IncomeEventCopyWithImpl<$Res, IncomeEvent>;
}

/// @nodoc
class _$IncomeEventCopyWithImpl<$Res, $Val extends IncomeEvent>
    implements $IncomeEventCopyWith<$Res> {
  _$IncomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadIncomeEventCopyWith<$Res> {
  factory _$$LoadIncomeEventCopyWith(
          _$LoadIncomeEvent value, $Res Function(_$LoadIncomeEvent) then) =
      __$$LoadIncomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadIncomeEventCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$LoadIncomeEvent>
    implements _$$LoadIncomeEventCopyWith<$Res> {
  __$$LoadIncomeEventCopyWithImpl(
      _$LoadIncomeEvent _value, $Res Function(_$LoadIncomeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadIncomeEvent extends LoadIncomeEvent {
  const _$LoadIncomeEvent() : super._();

  @override
  String toString() {
    return 'IncomeEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadIncomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int? walletId) setWalletId,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int? walletId)? setWalletId,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int? walletId)? setWalletId,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadIncomeEvent value) load,
    required TResult Function(SetWalletIdIncomeEvent value) setWalletId,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadIncomeEvent value)? load,
    TResult? Function(SetWalletIdIncomeEvent value)? setWalletId,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadIncomeEvent value)? load,
    TResult Function(SetWalletIdIncomeEvent value)? setWalletId,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadIncomeEvent extends IncomeEvent {
  const factory LoadIncomeEvent() = _$LoadIncomeEvent;
  const LoadIncomeEvent._() : super._();
}

/// @nodoc
abstract class _$$SetWalletIdIncomeEventCopyWith<$Res> {
  factory _$$SetWalletIdIncomeEventCopyWith(_$SetWalletIdIncomeEvent value,
          $Res Function(_$SetWalletIdIncomeEvent) then) =
      __$$SetWalletIdIncomeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int? walletId});
}

/// @nodoc
class __$$SetWalletIdIncomeEventCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$SetWalletIdIncomeEvent>
    implements _$$SetWalletIdIncomeEventCopyWith<$Res> {
  __$$SetWalletIdIncomeEventCopyWithImpl(_$SetWalletIdIncomeEvent _value,
      $Res Function(_$SetWalletIdIncomeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = freezed,
  }) {
    return _then(_$SetWalletIdIncomeEvent(
      freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SetWalletIdIncomeEvent extends SetWalletIdIncomeEvent {
  const _$SetWalletIdIncomeEvent(this.walletId) : super._();

  @override
  final int? walletId;

  @override
  String toString() {
    return 'IncomeEvent.setWalletId(walletId: $walletId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetWalletIdIncomeEvent &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetWalletIdIncomeEventCopyWith<_$SetWalletIdIncomeEvent> get copyWith =>
      __$$SetWalletIdIncomeEventCopyWithImpl<_$SetWalletIdIncomeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int? walletId) setWalletId,
  }) {
    return setWalletId(walletId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int? walletId)? setWalletId,
  }) {
    return setWalletId?.call(walletId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
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
    required TResult Function(LoadIncomeEvent value) load,
    required TResult Function(SetWalletIdIncomeEvent value) setWalletId,
  }) {
    return setWalletId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadIncomeEvent value)? load,
    TResult? Function(SetWalletIdIncomeEvent value)? setWalletId,
  }) {
    return setWalletId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadIncomeEvent value)? load,
    TResult Function(SetWalletIdIncomeEvent value)? setWalletId,
    required TResult orElse(),
  }) {
    if (setWalletId != null) {
      return setWalletId(this);
    }
    return orElse();
  }
}

abstract class SetWalletIdIncomeEvent extends IncomeEvent {
  const factory SetWalletIdIncomeEvent(final int? walletId) =
      _$SetWalletIdIncomeEvent;
  const SetWalletIdIncomeEvent._() : super._();

  int? get walletId;
  @JsonKey(ignore: true)
  _$$SetWalletIdIncomeEventCopyWith<_$SetWalletIdIncomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IncomeState {
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int? get walletId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncomeStateCopyWith<IncomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeStateCopyWith<$Res> {
  factory $IncomeStateCopyWith(
          IncomeState value, $Res Function(IncomeState) then) =
      _$IncomeStateCopyWithImpl<$Res, IncomeState>;
  @useResult
  $Res call({List<Transaction> transactions, bool isLoading, int? walletId});
}

/// @nodoc
class _$IncomeStateCopyWithImpl<$Res, $Val extends IncomeState>
    implements $IncomeStateCopyWith<$Res> {
  _$IncomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? isLoading = null,
    Object? walletId = freezed,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IncomeStateCopyWith<$Res>
    implements $IncomeStateCopyWith<$Res> {
  factory _$$_IncomeStateCopyWith(
          _$_IncomeState value, $Res Function(_$_IncomeState) then) =
      __$$_IncomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Transaction> transactions, bool isLoading, int? walletId});
}

/// @nodoc
class __$$_IncomeStateCopyWithImpl<$Res>
    extends _$IncomeStateCopyWithImpl<$Res, _$_IncomeState>
    implements _$$_IncomeStateCopyWith<$Res> {
  __$$_IncomeStateCopyWithImpl(
      _$_IncomeState _value, $Res Function(_$_IncomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? isLoading = null,
    Object? walletId = freezed,
  }) {
    return _then(_$_IncomeState(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_IncomeState implements _IncomeState {
  const _$_IncomeState(
      {required final List<Transaction> transactions,
      required this.isLoading,
      this.walletId})
      : _transactions = transactions;

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final bool isLoading;
  @override
  final int? walletId;

  @override
  String toString() {
    return 'IncomeState(transactions: $transactions, isLoading: $isLoading, walletId: $walletId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncomeState &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_transactions), isLoading, walletId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncomeStateCopyWith<_$_IncomeState> get copyWith =>
      __$$_IncomeStateCopyWithImpl<_$_IncomeState>(this, _$identity);
}

abstract class _IncomeState implements IncomeState {
  const factory _IncomeState(
      {required final List<Transaction> transactions,
      required final bool isLoading,
      final int? walletId}) = _$_IncomeState;

  @override
  List<Transaction> get transactions;
  @override
  bool get isLoading;
  @override
  int? get walletId;
  @override
  @JsonKey(ignore: true)
  _$$_IncomeStateCopyWith<_$_IncomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
