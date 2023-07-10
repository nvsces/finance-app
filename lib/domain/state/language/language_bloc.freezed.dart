// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LanguageEvent {
  Locale get locale => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) selectedLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Locale locale)? selectedLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? selectedLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedLocal value) selectedLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectedLocal value)? selectedLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedLocal value)? selectedLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageEventCopyWith<LanguageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res, LanguageEvent>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res, $Val extends LanguageEvent>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectedLocalCopyWith<$Res>
    implements $LanguageEventCopyWith<$Res> {
  factory _$$_SelectedLocalCopyWith(
          _$_SelectedLocal value, $Res Function(_$_SelectedLocal) then) =
      __$$_SelectedLocalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$_SelectedLocalCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$_SelectedLocal>
    implements _$$_SelectedLocalCopyWith<$Res> {
  __$$_SelectedLocalCopyWithImpl(
      _$_SelectedLocal _value, $Res Function(_$_SelectedLocal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$_SelectedLocal(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_SelectedLocal implements _SelectedLocal {
  const _$_SelectedLocal(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LanguageEvent.selectedLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedLocal &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedLocalCopyWith<_$_SelectedLocal> get copyWith =>
      __$$_SelectedLocalCopyWithImpl<_$_SelectedLocal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) selectedLocale,
  }) {
    return selectedLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Locale locale)? selectedLocale,
  }) {
    return selectedLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? selectedLocale,
    required TResult orElse(),
  }) {
    if (selectedLocale != null) {
      return selectedLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedLocal value) selectedLocale,
  }) {
    return selectedLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectedLocal value)? selectedLocale,
  }) {
    return selectedLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedLocal value)? selectedLocale,
    required TResult orElse(),
  }) {
    if (selectedLocale != null) {
      return selectedLocale(this);
    }
    return orElse();
  }
}

abstract class _SelectedLocal implements LanguageEvent {
  const factory _SelectedLocal(final Locale locale) = _$_SelectedLocal;

  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedLocalCopyWith<_$_SelectedLocal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LanguageState {
  Locale get selectedLocale => throw _privateConstructorUsedError;
  List<Locale> get supportedLocale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
  @useResult
  $Res call({Locale selectedLocale, List<Locale> supportedLocale});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocale = null,
    Object? supportedLocale = null,
  }) {
    return _then(_value.copyWith(
      selectedLocale: null == selectedLocale
          ? _value.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
      supportedLocale: null == supportedLocale
          ? _value.supportedLocale
          : supportedLocale // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageStateCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$$_LanguageStateCopyWith(
          _$_LanguageState value, $Res Function(_$_LanguageState) then) =
      __$$_LanguageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale selectedLocale, List<Locale> supportedLocale});
}

/// @nodoc
class __$$_LanguageStateCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$_LanguageState>
    implements _$$_LanguageStateCopyWith<$Res> {
  __$$_LanguageStateCopyWithImpl(
      _$_LanguageState _value, $Res Function(_$_LanguageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocale = null,
    Object? supportedLocale = null,
  }) {
    return _then(_$_LanguageState(
      selectedLocale: null == selectedLocale
          ? _value.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
      supportedLocale: null == supportedLocale
          ? _value._supportedLocale
          : supportedLocale // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ));
  }
}

/// @nodoc

class _$_LanguageState implements _LanguageState {
  const _$_LanguageState(
      {required this.selectedLocale,
      required final List<Locale> supportedLocale})
      : _supportedLocale = supportedLocale;

  @override
  final Locale selectedLocale;
  final List<Locale> _supportedLocale;
  @override
  List<Locale> get supportedLocale {
    if (_supportedLocale is EqualUnmodifiableListView) return _supportedLocale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedLocale);
  }

  @override
  String toString() {
    return 'LanguageState(selectedLocale: $selectedLocale, supportedLocale: $supportedLocale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageState &&
            (identical(other.selectedLocale, selectedLocale) ||
                other.selectedLocale == selectedLocale) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocale, _supportedLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLocale,
      const DeepCollectionEquality().hash(_supportedLocale));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageStateCopyWith<_$_LanguageState> get copyWith =>
      __$$_LanguageStateCopyWithImpl<_$_LanguageState>(this, _$identity);
}

abstract class _LanguageState implements LanguageState {
  const factory _LanguageState(
      {required final Locale selectedLocale,
      required final List<Locale> supportedLocale}) = _$_LanguageState;

  @override
  Locale get selectedLocale;
  @override
  List<Locale> get supportedLocale;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageStateCopyWith<_$_LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}
