import 'package:finance_app/domain/state/upload/upload_bloc.dart';
import 'package:finance_app/domain/state/upload/upload_event.dart';
import 'package:finance_app/domain/state/upload/upload_state.dart';
import 'package:finance_app/ui/theme/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UploadBloc uploadBloc = BlocProvider.of<UploadBloc>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Container(
              child: AppButton(
                  text: 'Назад',
                  func: () {
                    GoRouter.of(context).go('/profit');
                  }),
            ),
            const SizedBox(height: 200),
            Center(
                child: Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                    child: BlocBuilder<UploadBloc, UploadState>(
                      builder: (context, state) {
                        if (state is FinanceEmptyState) {
                          return const Center(
                              child: Text('Нажми на кнопку "Загрузить"'));
                        }
                        if (state is FinanceLoadingState) {
                          return Center(child: CircularProgressIndicator());
                        }
                        if (state is FinanceLoadedState) {
                          return ListView.builder(
                            itemCount: state.loadedFinance.length,
                            itemBuilder: (contex, index) {
                              return ListTile(
                                leading: Text(
                                    'name: ${state.loadedFinance[index].name}'),
                                title: Text(
                                    'value: ${state.loadedFinance[index].id}'),
                              );
                            },
                          );
                        }

                        if (state is FinanceErrorState) {
                          return const Center(child: Text('Error'));
                        }
                        return const SizedBox.shrink();
                      },
                    ))),
            Container(
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton(
                    text: 'Загрузить',
                    func: () {
                      uploadBloc.add(FinanceLoadEvent());
                    },
                  ),
                  AppButton(
                    text: 'Стереть',
                    func: () {
                      uploadBloc.add(FinanceClearEvent());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
