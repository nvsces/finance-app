// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../data/models/cash_flow.dart';

abstract class UploadState {}

class FinanceEmptyState extends UploadState {}

class FinanceLoadingState extends UploadState {}

class FinanceLoadedState extends UploadState {
  List<CashFlow> loadedFinance;
  FinanceLoadedState({
    required this.loadedFinance,
  });
}

class FinanceErrorState extends UploadState {}
