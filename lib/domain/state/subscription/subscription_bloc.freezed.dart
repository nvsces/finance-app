// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubscriptionEvent {
  SubscriptionModel get subscriptions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubscriptionModel subscriptions) read,
    required TResult Function(SubscriptionModel subscriptions) create,
    required TResult Function(SubscriptionModel subscriptions) edit,
    required TResult Function(SubscriptionModel subscriptions) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubscriptionModel subscriptions)? read,
    TResult? Function(SubscriptionModel subscriptions)? create,
    TResult? Function(SubscriptionModel subscriptions)? edit,
    TResult? Function(SubscriptionModel subscriptions)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubscriptionModel subscriptions)? read,
    TResult Function(SubscriptionModel subscriptions)? create,
    TResult Function(SubscriptionModel subscriptions)? edit,
    TResult Function(SubscriptionModel subscriptions)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadSubscriptionEvent value) read,
    required TResult Function(CreateSubscriptionEvent value) create,
    required TResult Function(EditSubscriptionEvent value) edit,
    required TResult Function(DeleteSubscriptionEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadSubscriptionEvent value)? read,
    TResult? Function(CreateSubscriptionEvent value)? create,
    TResult? Function(EditSubscriptionEvent value)? edit,
    TResult? Function(DeleteSubscriptionEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadSubscriptionEvent value)? read,
    TResult Function(CreateSubscriptionEvent value)? create,
    TResult Function(EditSubscriptionEvent value)? edit,
    TResult Function(DeleteSubscriptionEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionEventCopyWith<SubscriptionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionEventCopyWith<$Res> {
  factory $SubscriptionEventCopyWith(
          SubscriptionEvent value, $Res Function(SubscriptionEvent) then) =
      _$SubscriptionEventCopyWithImpl<$Res, SubscriptionEvent>;
  @useResult
  $Res call({SubscriptionModel subscriptions});
}

/// @nodoc
class _$SubscriptionEventCopyWithImpl<$Res, $Val extends SubscriptionEvent>
    implements $SubscriptionEventCopyWith<$Res> {
  _$SubscriptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = null,
  }) {
    return _then(_value.copyWith(
      subscriptions: null == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as SubscriptionModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadSubscriptionEventCopyWith<$Res>
    implements $SubscriptionEventCopyWith<$Res> {
  factory _$$ReadSubscriptionEventCopyWith(_$ReadSubscriptionEvent value,
          $Res Function(_$ReadSubscriptionEvent) then) =
      __$$ReadSubscriptionEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubscriptionModel subscriptions});
}

/// @nodoc
class __$$ReadSubscriptionEventCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$ReadSubscriptionEvent>
    implements _$$ReadSubscriptionEventCopyWith<$Res> {
  __$$ReadSubscriptionEventCopyWithImpl(_$ReadSubscriptionEvent _value,
      $Res Function(_$ReadSubscriptionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = null,
  }) {
    return _then(_$ReadSubscriptionEvent(
      subscriptions: null == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as SubscriptionModel,
    ));
  }
}

/// @nodoc

class _$ReadSubscriptionEvent extends ReadSubscriptionEvent {
  const _$ReadSubscriptionEvent({required this.subscriptions}) : super._();

  @override
  final SubscriptionModel subscriptions;

  @override
  String toString() {
    return 'SubscriptionEvent.read(subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadSubscriptionEvent &&
            (identical(other.subscriptions, subscriptions) ||
                other.subscriptions == subscriptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadSubscriptionEventCopyWith<_$ReadSubscriptionEvent> get copyWith =>
      __$$ReadSubscriptionEventCopyWithImpl<_$ReadSubscriptionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubscriptionModel subscriptions) read,
    required TResult Function(SubscriptionModel subscriptions) create,
    required TResult Function(SubscriptionModel subscriptions) edit,
    required TResult Function(SubscriptionModel subscriptions) delete,
  }) {
    return read(subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubscriptionModel subscriptions)? read,
    TResult? Function(SubscriptionModel subscriptions)? create,
    TResult? Function(SubscriptionModel subscriptions)? edit,
    TResult? Function(SubscriptionModel subscriptions)? delete,
  }) {
    return read?.call(subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubscriptionModel subscriptions)? read,
    TResult Function(SubscriptionModel subscriptions)? create,
    TResult Function(SubscriptionModel subscriptions)? edit,
    TResult Function(SubscriptionModel subscriptions)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(subscriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadSubscriptionEvent value) read,
    required TResult Function(CreateSubscriptionEvent value) create,
    required TResult Function(EditSubscriptionEvent value) edit,
    required TResult Function(DeleteSubscriptionEvent value) delete,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadSubscriptionEvent value)? read,
    TResult? Function(CreateSubscriptionEvent value)? create,
    TResult? Function(EditSubscriptionEvent value)? edit,
    TResult? Function(DeleteSubscriptionEvent value)? delete,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadSubscriptionEvent value)? read,
    TResult Function(CreateSubscriptionEvent value)? create,
    TResult Function(EditSubscriptionEvent value)? edit,
    TResult Function(DeleteSubscriptionEvent value)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadSubscriptionEvent extends SubscriptionEvent {
  const factory ReadSubscriptionEvent(
          {required final SubscriptionModel subscriptions}) =
      _$ReadSubscriptionEvent;
  const ReadSubscriptionEvent._() : super._();

  @override
  SubscriptionModel get subscriptions;
  @override
  @JsonKey(ignore: true)
  _$$ReadSubscriptionEventCopyWith<_$ReadSubscriptionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateSubscriptionEventCopyWith<$Res>
    implements $SubscriptionEventCopyWith<$Res> {
  factory _$$CreateSubscriptionEventCopyWith(_$CreateSubscriptionEvent value,
          $Res Function(_$CreateSubscriptionEvent) then) =
      __$$CreateSubscriptionEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubscriptionModel subscriptions});
}

/// @nodoc
class __$$CreateSubscriptionEventCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$CreateSubscriptionEvent>
    implements _$$CreateSubscriptionEventCopyWith<$Res> {
  __$$CreateSubscriptionEventCopyWithImpl(_$CreateSubscriptionEvent _value,
      $Res Function(_$CreateSubscriptionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = null,
  }) {
    return _then(_$CreateSubscriptionEvent(
      subscriptions: null == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as SubscriptionModel,
    ));
  }
}

/// @nodoc

class _$CreateSubscriptionEvent extends CreateSubscriptionEvent {
  const _$CreateSubscriptionEvent({required this.subscriptions}) : super._();

  @override
  final SubscriptionModel subscriptions;

  @override
  String toString() {
    return 'SubscriptionEvent.create(subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSubscriptionEvent &&
            (identical(other.subscriptions, subscriptions) ||
                other.subscriptions == subscriptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSubscriptionEventCopyWith<_$CreateSubscriptionEvent> get copyWith =>
      __$$CreateSubscriptionEventCopyWithImpl<_$CreateSubscriptionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubscriptionModel subscriptions) read,
    required TResult Function(SubscriptionModel subscriptions) create,
    required TResult Function(SubscriptionModel subscriptions) edit,
    required TResult Function(SubscriptionModel subscriptions) delete,
  }) {
    return create(subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubscriptionModel subscriptions)? read,
    TResult? Function(SubscriptionModel subscriptions)? create,
    TResult? Function(SubscriptionModel subscriptions)? edit,
    TResult? Function(SubscriptionModel subscriptions)? delete,
  }) {
    return create?.call(subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubscriptionModel subscriptions)? read,
    TResult Function(SubscriptionModel subscriptions)? create,
    TResult Function(SubscriptionModel subscriptions)? edit,
    TResult Function(SubscriptionModel subscriptions)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(subscriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadSubscriptionEvent value) read,
    required TResult Function(CreateSubscriptionEvent value) create,
    required TResult Function(EditSubscriptionEvent value) edit,
    required TResult Function(DeleteSubscriptionEvent value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadSubscriptionEvent value)? read,
    TResult? Function(CreateSubscriptionEvent value)? create,
    TResult? Function(EditSubscriptionEvent value)? edit,
    TResult? Function(DeleteSubscriptionEvent value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadSubscriptionEvent value)? read,
    TResult Function(CreateSubscriptionEvent value)? create,
    TResult Function(EditSubscriptionEvent value)? edit,
    TResult Function(DeleteSubscriptionEvent value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateSubscriptionEvent extends SubscriptionEvent {
  const factory CreateSubscriptionEvent(
          {required final SubscriptionModel subscriptions}) =
      _$CreateSubscriptionEvent;
  const CreateSubscriptionEvent._() : super._();

  @override
  SubscriptionModel get subscriptions;
  @override
  @JsonKey(ignore: true)
  _$$CreateSubscriptionEventCopyWith<_$CreateSubscriptionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditSubscriptionEventCopyWith<$Res>
    implements $SubscriptionEventCopyWith<$Res> {
  factory _$$EditSubscriptionEventCopyWith(_$EditSubscriptionEvent value,
          $Res Function(_$EditSubscriptionEvent) then) =
      __$$EditSubscriptionEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubscriptionModel subscriptions});
}

/// @nodoc
class __$$EditSubscriptionEventCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$EditSubscriptionEvent>
    implements _$$EditSubscriptionEventCopyWith<$Res> {
  __$$EditSubscriptionEventCopyWithImpl(_$EditSubscriptionEvent _value,
      $Res Function(_$EditSubscriptionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = null,
  }) {
    return _then(_$EditSubscriptionEvent(
      subscriptions: null == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as SubscriptionModel,
    ));
  }
}

/// @nodoc

class _$EditSubscriptionEvent extends EditSubscriptionEvent {
  const _$EditSubscriptionEvent({required this.subscriptions}) : super._();

  @override
  final SubscriptionModel subscriptions;

  @override
  String toString() {
    return 'SubscriptionEvent.edit(subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSubscriptionEvent &&
            (identical(other.subscriptions, subscriptions) ||
                other.subscriptions == subscriptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSubscriptionEventCopyWith<_$EditSubscriptionEvent> get copyWith =>
      __$$EditSubscriptionEventCopyWithImpl<_$EditSubscriptionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubscriptionModel subscriptions) read,
    required TResult Function(SubscriptionModel subscriptions) create,
    required TResult Function(SubscriptionModel subscriptions) edit,
    required TResult Function(SubscriptionModel subscriptions) delete,
  }) {
    return edit(subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubscriptionModel subscriptions)? read,
    TResult? Function(SubscriptionModel subscriptions)? create,
    TResult? Function(SubscriptionModel subscriptions)? edit,
    TResult? Function(SubscriptionModel subscriptions)? delete,
  }) {
    return edit?.call(subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubscriptionModel subscriptions)? read,
    TResult Function(SubscriptionModel subscriptions)? create,
    TResult Function(SubscriptionModel subscriptions)? edit,
    TResult Function(SubscriptionModel subscriptions)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(subscriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadSubscriptionEvent value) read,
    required TResult Function(CreateSubscriptionEvent value) create,
    required TResult Function(EditSubscriptionEvent value) edit,
    required TResult Function(DeleteSubscriptionEvent value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadSubscriptionEvent value)? read,
    TResult? Function(CreateSubscriptionEvent value)? create,
    TResult? Function(EditSubscriptionEvent value)? edit,
    TResult? Function(DeleteSubscriptionEvent value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadSubscriptionEvent value)? read,
    TResult Function(CreateSubscriptionEvent value)? create,
    TResult Function(EditSubscriptionEvent value)? edit,
    TResult Function(DeleteSubscriptionEvent value)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class EditSubscriptionEvent extends SubscriptionEvent {
  const factory EditSubscriptionEvent(
          {required final SubscriptionModel subscriptions}) =
      _$EditSubscriptionEvent;
  const EditSubscriptionEvent._() : super._();

  @override
  SubscriptionModel get subscriptions;
  @override
  @JsonKey(ignore: true)
  _$$EditSubscriptionEventCopyWith<_$EditSubscriptionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSubscriptionEventCopyWith<$Res>
    implements $SubscriptionEventCopyWith<$Res> {
  factory _$$DeleteSubscriptionEventCopyWith(_$DeleteSubscriptionEvent value,
          $Res Function(_$DeleteSubscriptionEvent) then) =
      __$$DeleteSubscriptionEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubscriptionModel subscriptions});
}

/// @nodoc
class __$$DeleteSubscriptionEventCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$DeleteSubscriptionEvent>
    implements _$$DeleteSubscriptionEventCopyWith<$Res> {
  __$$DeleteSubscriptionEventCopyWithImpl(_$DeleteSubscriptionEvent _value,
      $Res Function(_$DeleteSubscriptionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = null,
  }) {
    return _then(_$DeleteSubscriptionEvent(
      subscriptions: null == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as SubscriptionModel,
    ));
  }
}

/// @nodoc

class _$DeleteSubscriptionEvent extends DeleteSubscriptionEvent {
  const _$DeleteSubscriptionEvent({required this.subscriptions}) : super._();

  @override
  final SubscriptionModel subscriptions;

  @override
  String toString() {
    return 'SubscriptionEvent.delete(subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSubscriptionEvent &&
            (identical(other.subscriptions, subscriptions) ||
                other.subscriptions == subscriptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSubscriptionEventCopyWith<_$DeleteSubscriptionEvent> get copyWith =>
      __$$DeleteSubscriptionEventCopyWithImpl<_$DeleteSubscriptionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubscriptionModel subscriptions) read,
    required TResult Function(SubscriptionModel subscriptions) create,
    required TResult Function(SubscriptionModel subscriptions) edit,
    required TResult Function(SubscriptionModel subscriptions) delete,
  }) {
    return delete(subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubscriptionModel subscriptions)? read,
    TResult? Function(SubscriptionModel subscriptions)? create,
    TResult? Function(SubscriptionModel subscriptions)? edit,
    TResult? Function(SubscriptionModel subscriptions)? delete,
  }) {
    return delete?.call(subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubscriptionModel subscriptions)? read,
    TResult Function(SubscriptionModel subscriptions)? create,
    TResult Function(SubscriptionModel subscriptions)? edit,
    TResult Function(SubscriptionModel subscriptions)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(subscriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadSubscriptionEvent value) read,
    required TResult Function(CreateSubscriptionEvent value) create,
    required TResult Function(EditSubscriptionEvent value) edit,
    required TResult Function(DeleteSubscriptionEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadSubscriptionEvent value)? read,
    TResult? Function(CreateSubscriptionEvent value)? create,
    TResult? Function(EditSubscriptionEvent value)? edit,
    TResult? Function(DeleteSubscriptionEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadSubscriptionEvent value)? read,
    TResult Function(CreateSubscriptionEvent value)? create,
    TResult Function(EditSubscriptionEvent value)? edit,
    TResult Function(DeleteSubscriptionEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteSubscriptionEvent extends SubscriptionEvent {
  const factory DeleteSubscriptionEvent(
          {required final SubscriptionModel subscriptions}) =
      _$DeleteSubscriptionEvent;
  const DeleteSubscriptionEvent._() : super._();

  @override
  SubscriptionModel get subscriptions;
  @override
  @JsonKey(ignore: true)
  _$$DeleteSubscriptionEventCopyWith<_$DeleteSubscriptionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubscriptionState {
  List<SubscriptionModel> get subscriptions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionStateCopyWith<SubscriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
          SubscriptionState value, $Res Function(SubscriptionState) then) =
      _$SubscriptionStateCopyWithImpl<$Res, SubscriptionState>;
  @useResult
  $Res call({List<SubscriptionModel> subscriptions});
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res, $Val extends SubscriptionState>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = null,
  }) {
    return _then(_value.copyWith(
      subscriptions: null == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubscriptionStateCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$_SubscriptionStateCopyWith(_$_SubscriptionState value,
          $Res Function(_$_SubscriptionState) then) =
      __$$_SubscriptionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SubscriptionModel> subscriptions});
}

/// @nodoc
class __$$_SubscriptionStateCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$_SubscriptionState>
    implements _$$_SubscriptionStateCopyWith<$Res> {
  __$$_SubscriptionStateCopyWithImpl(
      _$_SubscriptionState _value, $Res Function(_$_SubscriptionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = null,
  }) {
    return _then(_$_SubscriptionState(
      subscriptions: null == subscriptions
          ? _value._subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionModel>,
    ));
  }
}

/// @nodoc

class _$_SubscriptionState implements _SubscriptionState {
  const _$_SubscriptionState(
      {required final List<SubscriptionModel> subscriptions})
      : _subscriptions = subscriptions;

  final List<SubscriptionModel> _subscriptions;
  @override
  List<SubscriptionModel> get subscriptions {
    if (_subscriptions is EqualUnmodifiableListView) return _subscriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscriptions);
  }

  @override
  String toString() {
    return 'SubscriptionState(subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionState &&
            const DeepCollectionEquality()
                .equals(other._subscriptions, _subscriptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_subscriptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionStateCopyWith<_$_SubscriptionState> get copyWith =>
      __$$_SubscriptionStateCopyWithImpl<_$_SubscriptionState>(
          this, _$identity);
}

abstract class _SubscriptionState implements SubscriptionState {
  const factory _SubscriptionState(
          {required final List<SubscriptionModel> subscriptions}) =
      _$_SubscriptionState;

  @override
  List<SubscriptionModel> get subscriptions;
  @override
  @JsonKey(ignore: true)
  _$$_SubscriptionStateCopyWith<_$_SubscriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}
