// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryTransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction tr) disabled,
    required TResult Function(Transaction tr, String comment) addComment,
    required TResult Function(List<Transaction> transactions) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Transaction tr)? disabled,
    TResult? Function(Transaction tr, String comment)? addComment,
    TResult? Function(List<Transaction> transactions)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction tr)? disabled,
    TResult Function(Transaction tr, String comment)? addComment,
    TResult Function(List<Transaction> transactions)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisabledCategoryTransactionEvent value) disabled,
    required TResult Function(AddCommentCategoryTransactionEvent value)
        addComment,
    required TResult Function(InitCategoryTransactionEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DisabledCategoryTransactionEvent value)? disabled,
    TResult? Function(AddCommentCategoryTransactionEvent value)? addComment,
    TResult? Function(InitCategoryTransactionEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisabledCategoryTransactionEvent value)? disabled,
    TResult Function(AddCommentCategoryTransactionEvent value)? addComment,
    TResult Function(InitCategoryTransactionEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTransactionEventCopyWith<$Res> {
  factory $CategoryTransactionEventCopyWith(CategoryTransactionEvent value,
          $Res Function(CategoryTransactionEvent) then) =
      _$CategoryTransactionEventCopyWithImpl<$Res, CategoryTransactionEvent>;
}

/// @nodoc
class _$CategoryTransactionEventCopyWithImpl<$Res,
        $Val extends CategoryTransactionEvent>
    implements $CategoryTransactionEventCopyWith<$Res> {
  _$CategoryTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DisabledCategoryTransactionEventCopyWith<$Res> {
  factory _$$DisabledCategoryTransactionEventCopyWith(
          _$DisabledCategoryTransactionEvent value,
          $Res Function(_$DisabledCategoryTransactionEvent) then) =
      __$$DisabledCategoryTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Transaction tr});
}

/// @nodoc
class __$$DisabledCategoryTransactionEventCopyWithImpl<$Res>
    extends _$CategoryTransactionEventCopyWithImpl<$Res,
        _$DisabledCategoryTransactionEvent>
    implements _$$DisabledCategoryTransactionEventCopyWith<$Res> {
  __$$DisabledCategoryTransactionEventCopyWithImpl(
      _$DisabledCategoryTransactionEvent _value,
      $Res Function(_$DisabledCategoryTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tr = null,
  }) {
    return _then(_$DisabledCategoryTransactionEvent(
      null == tr
          ? _value.tr
          : tr // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc

class _$DisabledCategoryTransactionEvent
    extends DisabledCategoryTransactionEvent {
  const _$DisabledCategoryTransactionEvent(this.tr) : super._();

  @override
  final Transaction tr;

  @override
  String toString() {
    return 'CategoryTransactionEvent.disabled(tr: $tr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisabledCategoryTransactionEvent &&
            (identical(other.tr, tr) || other.tr == tr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisabledCategoryTransactionEventCopyWith<
          _$DisabledCategoryTransactionEvent>
      get copyWith => __$$DisabledCategoryTransactionEventCopyWithImpl<
          _$DisabledCategoryTransactionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction tr) disabled,
    required TResult Function(Transaction tr, String comment) addComment,
    required TResult Function(List<Transaction> transactions) init,
  }) {
    return disabled(tr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Transaction tr)? disabled,
    TResult? Function(Transaction tr, String comment)? addComment,
    TResult? Function(List<Transaction> transactions)? init,
  }) {
    return disabled?.call(tr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction tr)? disabled,
    TResult Function(Transaction tr, String comment)? addComment,
    TResult Function(List<Transaction> transactions)? init,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(tr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisabledCategoryTransactionEvent value) disabled,
    required TResult Function(AddCommentCategoryTransactionEvent value)
        addComment,
    required TResult Function(InitCategoryTransactionEvent value) init,
  }) {
    return disabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DisabledCategoryTransactionEvent value)? disabled,
    TResult? Function(AddCommentCategoryTransactionEvent value)? addComment,
    TResult? Function(InitCategoryTransactionEvent value)? init,
  }) {
    return disabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisabledCategoryTransactionEvent value)? disabled,
    TResult Function(AddCommentCategoryTransactionEvent value)? addComment,
    TResult Function(InitCategoryTransactionEvent value)? init,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(this);
    }
    return orElse();
  }
}

abstract class DisabledCategoryTransactionEvent
    extends CategoryTransactionEvent {
  const factory DisabledCategoryTransactionEvent(final Transaction tr) =
      _$DisabledCategoryTransactionEvent;
  const DisabledCategoryTransactionEvent._() : super._();

  Transaction get tr;
  @JsonKey(ignore: true)
  _$$DisabledCategoryTransactionEventCopyWith<
          _$DisabledCategoryTransactionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCommentCategoryTransactionEventCopyWith<$Res> {
  factory _$$AddCommentCategoryTransactionEventCopyWith(
          _$AddCommentCategoryTransactionEvent value,
          $Res Function(_$AddCommentCategoryTransactionEvent) then) =
      __$$AddCommentCategoryTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Transaction tr, String comment});
}

/// @nodoc
class __$$AddCommentCategoryTransactionEventCopyWithImpl<$Res>
    extends _$CategoryTransactionEventCopyWithImpl<$Res,
        _$AddCommentCategoryTransactionEvent>
    implements _$$AddCommentCategoryTransactionEventCopyWith<$Res> {
  __$$AddCommentCategoryTransactionEventCopyWithImpl(
      _$AddCommentCategoryTransactionEvent _value,
      $Res Function(_$AddCommentCategoryTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tr = null,
    Object? comment = null,
  }) {
    return _then(_$AddCommentCategoryTransactionEvent(
      tr: null == tr
          ? _value.tr
          : tr // ignore: cast_nullable_to_non_nullable
              as Transaction,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCommentCategoryTransactionEvent
    extends AddCommentCategoryTransactionEvent {
  const _$AddCommentCategoryTransactionEvent(
      {required this.tr, required this.comment})
      : super._();

  @override
  final Transaction tr;
  @override
  final String comment;

  @override
  String toString() {
    return 'CategoryTransactionEvent.addComment(tr: $tr, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentCategoryTransactionEvent &&
            (identical(other.tr, tr) || other.tr == tr) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tr, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentCategoryTransactionEventCopyWith<
          _$AddCommentCategoryTransactionEvent>
      get copyWith => __$$AddCommentCategoryTransactionEventCopyWithImpl<
          _$AddCommentCategoryTransactionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction tr) disabled,
    required TResult Function(Transaction tr, String comment) addComment,
    required TResult Function(List<Transaction> transactions) init,
  }) {
    return addComment(tr, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Transaction tr)? disabled,
    TResult? Function(Transaction tr, String comment)? addComment,
    TResult? Function(List<Transaction> transactions)? init,
  }) {
    return addComment?.call(tr, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction tr)? disabled,
    TResult Function(Transaction tr, String comment)? addComment,
    TResult Function(List<Transaction> transactions)? init,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(tr, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisabledCategoryTransactionEvent value) disabled,
    required TResult Function(AddCommentCategoryTransactionEvent value)
        addComment,
    required TResult Function(InitCategoryTransactionEvent value) init,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DisabledCategoryTransactionEvent value)? disabled,
    TResult? Function(AddCommentCategoryTransactionEvent value)? addComment,
    TResult? Function(InitCategoryTransactionEvent value)? init,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisabledCategoryTransactionEvent value)? disabled,
    TResult Function(AddCommentCategoryTransactionEvent value)? addComment,
    TResult Function(InitCategoryTransactionEvent value)? init,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class AddCommentCategoryTransactionEvent
    extends CategoryTransactionEvent {
  const factory AddCommentCategoryTransactionEvent(
      {required final Transaction tr,
      required final String comment}) = _$AddCommentCategoryTransactionEvent;
  const AddCommentCategoryTransactionEvent._() : super._();

  Transaction get tr;
  String get comment;
  @JsonKey(ignore: true)
  _$$AddCommentCategoryTransactionEventCopyWith<
          _$AddCommentCategoryTransactionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitCategoryTransactionEventCopyWith<$Res> {
  factory _$$InitCategoryTransactionEventCopyWith(
          _$InitCategoryTransactionEvent value,
          $Res Function(_$InitCategoryTransactionEvent) then) =
      __$$InitCategoryTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class __$$InitCategoryTransactionEventCopyWithImpl<$Res>
    extends _$CategoryTransactionEventCopyWithImpl<$Res,
        _$InitCategoryTransactionEvent>
    implements _$$InitCategoryTransactionEventCopyWith<$Res> {
  __$$InitCategoryTransactionEventCopyWithImpl(
      _$InitCategoryTransactionEvent _value,
      $Res Function(_$InitCategoryTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$InitCategoryTransactionEvent(
      null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$InitCategoryTransactionEvent extends InitCategoryTransactionEvent {
  const _$InitCategoryTransactionEvent(final List<Transaction> transactions)
      : _transactions = transactions,
        super._();

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'CategoryTransactionEvent.init(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitCategoryTransactionEvent &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitCategoryTransactionEventCopyWith<_$InitCategoryTransactionEvent>
      get copyWith => __$$InitCategoryTransactionEventCopyWithImpl<
          _$InitCategoryTransactionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction tr) disabled,
    required TResult Function(Transaction tr, String comment) addComment,
    required TResult Function(List<Transaction> transactions) init,
  }) {
    return init(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Transaction tr)? disabled,
    TResult? Function(Transaction tr, String comment)? addComment,
    TResult? Function(List<Transaction> transactions)? init,
  }) {
    return init?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction tr)? disabled,
    TResult Function(Transaction tr, String comment)? addComment,
    TResult Function(List<Transaction> transactions)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisabledCategoryTransactionEvent value) disabled,
    required TResult Function(AddCommentCategoryTransactionEvent value)
        addComment,
    required TResult Function(InitCategoryTransactionEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DisabledCategoryTransactionEvent value)? disabled,
    TResult? Function(AddCommentCategoryTransactionEvent value)? addComment,
    TResult? Function(InitCategoryTransactionEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisabledCategoryTransactionEvent value)? disabled,
    TResult Function(AddCommentCategoryTransactionEvent value)? addComment,
    TResult Function(InitCategoryTransactionEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitCategoryTransactionEvent extends CategoryTransactionEvent {
  const factory InitCategoryTransactionEvent(
      final List<Transaction> transactions) = _$InitCategoryTransactionEvent;
  const InitCategoryTransactionEvent._() : super._();

  List<Transaction> get transactions;
  @JsonKey(ignore: true)
  _$$InitCategoryTransactionEventCopyWith<_$InitCategoryTransactionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryTransactionState {
  List<Transaction> get transactions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryTransactionStateCopyWith<CategoryTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTransactionStateCopyWith<$Res> {
  factory $CategoryTransactionStateCopyWith(CategoryTransactionState value,
          $Res Function(CategoryTransactionState) then) =
      _$CategoryTransactionStateCopyWithImpl<$Res, CategoryTransactionState>;
  @useResult
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class _$CategoryTransactionStateCopyWithImpl<$Res,
        $Val extends CategoryTransactionState>
    implements $CategoryTransactionStateCopyWith<$Res> {
  _$CategoryTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryTransactionStateCopyWith<$Res>
    implements $CategoryTransactionStateCopyWith<$Res> {
  factory _$$_CategoryTransactionStateCopyWith(
          _$_CategoryTransactionState value,
          $Res Function(_$_CategoryTransactionState) then) =
      __$$_CategoryTransactionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class __$$_CategoryTransactionStateCopyWithImpl<$Res>
    extends _$CategoryTransactionStateCopyWithImpl<$Res,
        _$_CategoryTransactionState>
    implements _$$_CategoryTransactionStateCopyWith<$Res> {
  __$$_CategoryTransactionStateCopyWithImpl(_$_CategoryTransactionState _value,
      $Res Function(_$_CategoryTransactionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$_CategoryTransactionState(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$_CategoryTransactionState implements _CategoryTransactionState {
  const _$_CategoryTransactionState(
      {required final List<Transaction> transactions})
      : _transactions = transactions;

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'CategoryTransactionState(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryTransactionState &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryTransactionStateCopyWith<_$_CategoryTransactionState>
      get copyWith => __$$_CategoryTransactionStateCopyWithImpl<
          _$_CategoryTransactionState>(this, _$identity);
}

abstract class _CategoryTransactionState implements CategoryTransactionState {
  const factory _CategoryTransactionState(
          {required final List<Transaction> transactions}) =
      _$_CategoryTransactionState;

  @override
  List<Transaction> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryTransactionStateCopyWith<_$_CategoryTransactionState>
      get copyWith => throw _privateConstructorUsedError;
}
