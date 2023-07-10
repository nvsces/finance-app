import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'language_bloc.freezed.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.selectedLocale(Locale locale) = _SelectedLocal;
}

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState(
      {required Locale selectedLocale,
      required List<Locale> supportedLocale}) = _LanguageState;

  factory LanguageState.initial() => LanguageState(
      selectedLocale: AppLocalizations.supportedLocales.first,
      supportedLocale: AppLocalizations.supportedLocales);
}

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageState.initial()) {
    on<LanguageEvent>((event, emit) {event.map(
        selectedLocale: (event) {
          emit(
            state.copyWith(
              selectedLocale: event.locale,
            ),
          );
        },
      );});
  }
}
