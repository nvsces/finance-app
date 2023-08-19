// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disabled,
    required TResult Function(String comment) addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disabled,
    TResult? Function(String comment)? addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disabled,
    TResult Function(String comment)? addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisabledTransactionEvent value) disabled,
    required TResult Function(AddCommnetTransactionEvent value) addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DisabledTransactionEvent value)? disabled,
    TResult? Function(AddCommnetTransactionEvent value)? addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisabledTransactionEvent value)? disabled,
    TResult Function(AddCommnetTransactionEvent value)? addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DisabledTransactionEventCopyWith<$Res> {
  factory _$$DisabledTransactionEventCopyWith(_$DisabledTransactionEvent value,
          $Res Function(_$DisabledTransactionEvent) then) =
      __$$DisabledTransactionEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisabledTransactionEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$DisabledTransactionEvent>
    implements _$$DisabledTransactionEventCopyWith<$Res> {
  __$$DisabledTransactionEventCopyWithImpl(_$DisabledTransactionEvent _value,
      $Res Function(_$DisabledTransactionEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisabledTransactionEvent extends DisabledTransactionEvent {
  const _$DisabledTransactionEvent() : super._();

  @override
  String toString() {
    return 'TransactionEvent.disabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisabledTransactionEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disabled,
    required TResult Function(String comment) addComment,
  }) {
    return disabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disabled,
    TResult? Function(String comment)? addComment,
  }) {
    return disabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disabled,
    TResult Function(String comment)? addComment,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisabledTransactionEvent value) disabled,
    required TResult Function(AddCommnetTransactionEvent value) addComment,
  }) {
    return disabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DisabledTransactionEvent value)? disabled,
    TResult? Function(AddCommnetTransactionEvent value)? addComment,
  }) {
    return disabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisabledTransactionEvent value)? disabled,
    TResult Function(AddCommnetTransactionEvent value)? addComment,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(this);
    }
    return orElse();
  }
}

abstract class DisabledTransactionEvent extends TransactionEvent {
  const factory DisabledTransactionEvent() = _$DisabledTransactionEvent;
  const DisabledTransactionEvent._() : super._();
}

/// @nodoc
abstract class _$$AddCommnetTransactionEventCopyWith<$Res> {
  factory _$$AddCommnetTransactionEventCopyWith(
          _$AddCommnetTransactionEvent value,
          $Res Function(_$AddCommnetTransactionEvent) then) =
      __$$AddCommnetTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String comment});
}

/// @nodoc
class __$$AddCommnetTransactionEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$AddCommnetTransactionEvent>
    implements _$$AddCommnetTransactionEventCopyWith<$Res> {
  __$$AddCommnetTransactionEventCopyWithImpl(
      _$AddCommnetTransactionEvent _value,
      $Res Function(_$AddCommnetTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$AddCommnetTransactionEvent(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCommnetTransactionEvent extends AddCommnetTransactionEvent {
  const _$AddCommnetTransactionEvent({required this.comment}) : super._();

  @override
  final String comment;

  @override
  String toString() {
    return 'TransactionEvent.addComment(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommnetTransactionEvent &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommnetTransactionEventCopyWith<_$AddCommnetTransactionEvent>
      get copyWith => __$$AddCommnetTransactionEventCopyWithImpl<
          _$AddCommnetTransactionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disabled,
    required TResult Function(String comment) addComment,
  }) {
    return addComment(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disabled,
    TResult? Function(String comment)? addComment,
  }) {
    return addComment?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disabled,
    TResult Function(String comment)? addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisabledTransactionEvent value) disabled,
    required TResult Function(AddCommnetTransactionEvent value) addComment,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DisabledTransactionEvent value)? disabled,
    TResult? Function(AddCommnetTransactionEvent value)? addComment,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisabledTransactionEvent value)? disabled,
    TResult Function(AddCommnetTransactionEvent value)? addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class AddCommnetTransactionEvent extends TransactionEvent {
  const factory AddCommnetTransactionEvent({required final String comment}) =
      _$AddCommnetTransactionEvent;
  const AddCommnetTransactionEvent._() : super._();

  String get comment;
  @JsonKey(ignore: true)
  _$$AddCommnetTransactionEventCopyWith<_$AddCommnetTransactionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionState {
  Transaction get transaction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
  @useResult
  $Res call({Transaction transaction});
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionStateCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$_TransactionStateCopyWith(
          _$_TransactionState value, $Res Function(_$_TransactionState) then) =
      __$$_TransactionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Transaction transaction});
}

/// @nodoc
class __$$_TransactionStateCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$_TransactionState>
    implements _$$_TransactionStateCopyWith<$Res> {
  __$$_TransactionStateCopyWithImpl(
      _$_TransactionState _value, $Res Function(_$_TransactionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$_TransactionState(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc

class _$_TransactionState implements _TransactionState {
  const _$_TransactionState({required this.transaction});

  @override
  final Transaction transaction;

  @override
  String toString() {
    return 'TransactionState(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionState &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionStateCopyWith<_$_TransactionState> get copyWith =>
      __$$_TransactionStateCopyWithImpl<_$_TransactionState>(this, _$identity);
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState({required final Transaction transaction}) =
      _$_TransactionState;

  @override
  Transaction get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionStateCopyWith<_$_TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
