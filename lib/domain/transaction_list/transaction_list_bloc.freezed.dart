// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadTransactionListEvent value) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadTransactionListEvent value)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadTransactionListEvent value)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionListEventCopyWith<$Res> {
  factory $TransactionListEventCopyWith(TransactionListEvent value,
          $Res Function(TransactionListEvent) then) =
      _$TransactionListEventCopyWithImpl<$Res, TransactionListEvent>;
}

/// @nodoc
class _$TransactionListEventCopyWithImpl<$Res,
        $Val extends TransactionListEvent>
    implements $TransactionListEventCopyWith<$Res> {
  _$TransactionListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReadTransactionListEventCopyWith<$Res> {
  factory _$$ReadTransactionListEventCopyWith(_$ReadTransactionListEvent value,
          $Res Function(_$ReadTransactionListEvent) then) =
      __$$ReadTransactionListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadTransactionListEventCopyWithImpl<$Res>
    extends _$TransactionListEventCopyWithImpl<$Res, _$ReadTransactionListEvent>
    implements _$$ReadTransactionListEventCopyWith<$Res> {
  __$$ReadTransactionListEventCopyWithImpl(_$ReadTransactionListEvent _value,
      $Res Function(_$ReadTransactionListEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReadTransactionListEvent extends ReadTransactionListEvent {
  const _$ReadTransactionListEvent() : super._();

  @override
  String toString() {
    return 'TransactionListEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadTransactionListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadTransactionListEvent value) read,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadTransactionListEvent value)? read,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadTransactionListEvent value)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadTransactionListEvent extends TransactionListEvent {
  const factory ReadTransactionListEvent() = _$ReadTransactionListEvent;
  const ReadTransactionListEvent._() : super._();
}

/// @nodoc
mixin _$TransactionListState {
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionListStateCopyWith<TransactionListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionListStateCopyWith<$Res> {
  factory $TransactionListStateCopyWith(TransactionListState value,
          $Res Function(TransactionListState) then) =
      _$TransactionListStateCopyWithImpl<$Res, TransactionListState>;
  @useResult
  $Res call({List<Transaction> transactions, bool isLoading});
}

/// @nodoc
class _$TransactionListStateCopyWithImpl<$Res,
        $Val extends TransactionListState>
    implements $TransactionListStateCopyWith<$Res> {
  _$TransactionListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? isLoading = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionListStateCopyWith<$Res>
    implements $TransactionListStateCopyWith<$Res> {
  factory _$$_TransactionListStateCopyWith(_$_TransactionListState value,
          $Res Function(_$_TransactionListState) then) =
      __$$_TransactionListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Transaction> transactions, bool isLoading});
}

/// @nodoc
class __$$_TransactionListStateCopyWithImpl<$Res>
    extends _$TransactionListStateCopyWithImpl<$Res, _$_TransactionListState>
    implements _$$_TransactionListStateCopyWith<$Res> {
  __$$_TransactionListStateCopyWithImpl(_$_TransactionListState _value,
      $Res Function(_$_TransactionListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? isLoading = null,
  }) {
    return _then(_$_TransactionListState(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TransactionListState implements _TransactionListState {
  const _$_TransactionListState(
      {required final List<Transaction> transactions, required this.isLoading})
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
  String toString() {
    return 'TransactionListState(transactions: $transactions, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionListState &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_transactions), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionListStateCopyWith<_$_TransactionListState> get copyWith =>
      __$$_TransactionListStateCopyWithImpl<_$_TransactionListState>(
          this, _$identity);
}

abstract class _TransactionListState implements TransactionListState {
  const factory _TransactionListState(
      {required final List<Transaction> transactions,
      required final bool isLoading}) = _$_TransactionListState;

  @override
  List<Transaction> get transactions;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionListStateCopyWith<_$_TransactionListState> get copyWith =>
      throw _privateConstructorUsedError;
}
