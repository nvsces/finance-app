import 'package:finance_app/data/models/cash_flow.dart';
import 'package:finance_app/domain/state/upload/upload_event.dart';
import 'package:finance_app/domain/state/upload/upload_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repositiries/finance/finance_repositiry.dart';

class UploadBloc extends Bloc<UploadEvent, UploadState> {
  final FinanceRepository financeRepository;
  UploadBloc({required this.financeRepository}) : super(FinanceEmptyState()) {
    on<FinanceLoadEvent>((event, emit) async {
      emit(FinanceLoadingState());

      try {
        final List<CashFlow> loadedFinanceList =
            await financeRepository.getFinance();
        emit(FinanceLoadedState(loadedFinance: loadedFinanceList));
      } catch (_) {
        emit(FinanceErrorState());
      }
    });
    on<FinanceClearEvent>(
      (event, emit) async {
        emit(FinanceEmptyState());
      },
    );
  }
}
