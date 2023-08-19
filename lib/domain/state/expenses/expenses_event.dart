part of 'expenses_bloc.dart';

@freezed
class ExpensesEvent with _$ExpensesEvent {
  const ExpensesEvent._();

  const factory ExpensesEvent.load() = LoadExpensesEvent;
}
