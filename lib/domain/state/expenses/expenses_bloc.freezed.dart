// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpensesEvent {
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
    required TResult Function(LoadExpensesEvent value) load,
    required TResult Function(SetWalletIdExpensesEvent value) setWalletId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadExpensesEvent value)? load,
    TResult? Function(SetWalletIdExpensesEvent value)? setWalletId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadExpensesEvent value)? load,
    TResult Function(SetWalletIdExpensesEvent value)? setWalletId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesEventCopyWith<$Res> {
  factory $ExpensesEventCopyWith(
          ExpensesEvent value, $Res Function(ExpensesEvent) then) =
      _$ExpensesEventCopyWithImpl<$Res, ExpensesEvent>;
}

/// @nodoc
class _$ExpensesEventCopyWithImpl<$Res, $Val extends ExpensesEvent>
    implements $ExpensesEventCopyWith<$Res> {
  _$ExpensesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadExpensesEventCopyWith<$Res> {
  factory _$$LoadExpensesEventCopyWith(
          _$LoadExpensesEvent value, $Res Function(_$LoadExpensesEvent) then) =
      __$$LoadExpensesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadExpensesEventCopyWithImpl<$Res>
    extends _$ExpensesEventCopyWithImpl<$Res, _$LoadExpensesEvent>
    implements _$$LoadExpensesEventCopyWith<$Res> {
  __$$LoadExpensesEventCopyWithImpl(
      _$LoadExpensesEvent _value, $Res Function(_$LoadExpensesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadExpensesEvent extends LoadExpensesEvent {
  const _$LoadExpensesEvent() : super._();

  @override
  String toString() {
    return 'ExpensesEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadExpensesEvent);
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
    required TResult Function(LoadExpensesEvent value) load,
    required TResult Function(SetWalletIdExpensesEvent value) setWalletId,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadExpensesEvent value)? load,
    TResult? Function(SetWalletIdExpensesEvent value)? setWalletId,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadExpensesEvent value)? load,
    TResult Function(SetWalletIdExpensesEvent value)? setWalletId,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadExpensesEvent extends ExpensesEvent {
  const factory LoadExpensesEvent() = _$LoadExpensesEvent;
  const LoadExpensesEvent._() : super._();
}

/// @nodoc
abstract class _$$SetWalletIdExpensesEventCopyWith<$Res> {
  factory _$$SetWalletIdExpensesEventCopyWith(_$SetWalletIdExpensesEvent value,
          $Res Function(_$SetWalletIdExpensesEvent) then) =
      __$$SetWalletIdExpensesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int? walletId});
}

/// @nodoc
class __$$SetWalletIdExpensesEventCopyWithImpl<$Res>
    extends _$ExpensesEventCopyWithImpl<$Res, _$SetWalletIdExpensesEvent>
    implements _$$SetWalletIdExpensesEventCopyWith<$Res> {
  __$$SetWalletIdExpensesEventCopyWithImpl(_$SetWalletIdExpensesEvent _value,
      $Res Function(_$SetWalletIdExpensesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = freezed,
  }) {
    return _then(_$SetWalletIdExpensesEvent(
      freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SetWalletIdExpensesEvent extends SetWalletIdExpensesEvent {
  const _$SetWalletIdExpensesEvent(this.walletId) : super._();

  @override
  final int? walletId;

  @override
  String toString() {
    return 'ExpensesEvent.setWalletId(walletId: $walletId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetWalletIdExpensesEvent &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetWalletIdExpensesEventCopyWith<_$SetWalletIdExpensesEvent>
      get copyWith =>
          __$$SetWalletIdExpensesEventCopyWithImpl<_$SetWalletIdExpensesEvent>(
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
    required TResult Function(LoadExpensesEvent value) load,
    required TResult Function(SetWalletIdExpensesEvent value) setWalletId,
  }) {
    return setWalletId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadExpensesEvent value)? load,
    TResult? Function(SetWalletIdExpensesEvent value)? setWalletId,
  }) {
    return setWalletId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadExpensesEvent value)? load,
    TResult Function(SetWalletIdExpensesEvent value)? setWalletId,
    required TResult orElse(),
  }) {
    if (setWalletId != null) {
      return setWalletId(this);
    }
    return orElse();
  }
}

abstract class SetWalletIdExpensesEvent extends ExpensesEvent {
  const factory SetWalletIdExpensesEvent(final int? walletId) =
      _$SetWalletIdExpensesEvent;
  const SetWalletIdExpensesEvent._() : super._();

  int? get walletId;
  @JsonKey(ignore: true)
  _$$SetWalletIdExpensesEventCopyWith<_$SetWalletIdExpensesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpensesState {
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int? get walletId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpensesStateCopyWith<ExpensesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesStateCopyWith<$Res> {
  factory $ExpensesStateCopyWith(
          ExpensesState value, $Res Function(ExpensesState) then) =
      _$ExpensesStateCopyWithImpl<$Res, ExpensesState>;
  @useResult
  $Res call({List<Transaction> transactions, bool isLoading, int? walletId});
}

/// @nodoc
class _$ExpensesStateCopyWithImpl<$Res, $Val extends ExpensesState>
    implements $ExpensesStateCopyWith<$Res> {
  _$ExpensesStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ExpensesStateCopyWith<$Res>
    implements $ExpensesStateCopyWith<$Res> {
  factory _$$_ExpensesStateCopyWith(
          _$_ExpensesState value, $Res Function(_$_ExpensesState) then) =
      __$$_ExpensesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Transaction> transactions, bool isLoading, int? walletId});
}

/// @nodoc
class __$$_ExpensesStateCopyWithImpl<$Res>
    extends _$ExpensesStateCopyWithImpl<$Res, _$_ExpensesState>
    implements _$$_ExpensesStateCopyWith<$Res> {
  __$$_ExpensesStateCopyWithImpl(
      _$_ExpensesState _value, $Res Function(_$_ExpensesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? isLoading = null,
    Object? walletId = freezed,
  }) {
    return _then(_$_ExpensesState(
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

class _$_ExpensesState implements _ExpensesState {
  const _$_ExpensesState(
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
    return 'ExpensesState(transactions: $transactions, isLoading: $isLoading, walletId: $walletId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpensesState &&
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
  _$$_ExpensesStateCopyWith<_$_ExpensesState> get copyWith =>
      __$$_ExpensesStateCopyWithImpl<_$_ExpensesState>(this, _$identity);
}

abstract class _ExpensesState implements ExpensesState {
  const factory _ExpensesState(
      {required final List<Transaction> transactions,
      required final bool isLoading,
      final int? walletId}) = _$_ExpensesState;

  @override
  List<Transaction> get transactions;
  @override
  bool get isLoading;
  @override
  int? get walletId;
  @override
  @JsonKey(ignore: true)
  _$$_ExpensesStateCopyWith<_$_ExpensesState> get copyWith =>
      throw _privateConstructorUsedError;
}
