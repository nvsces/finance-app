import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/entity/bank_enum.dart';
import 'package:finance_app/domain/state/upload_file/upload_file_bloc.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:finance_app/ui/theme/app_button.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:finance_app/ui/theme/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../resources/jpgs.dart';

class UploadFilePage extends StatelessWidget {
  const UploadFilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            injector.get<UploadFileBloc>()..add(UploadFileEvent.init()),
        child: Scaffold(
          body: _UploadFileContent(),
        ));
  }
}

class _UploadFileContent extends StatelessWidget {
  const _UploadFileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: AppButton(
              child: const AppText(text: 'Назад', size: 20),
              onPressed: () {
                context.go(MobileRoutes.expenses.path);
              }),
        ),
        Expanded(
          child: BlocListener<UploadFileBloc, UploadFileState>(
              listener: (context, state) {
                if (state.result is FailureUploadFileState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Произошла ошибка')));
                }
                if (state.result is SuccessUploadFileState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Файл успешно загружен')));
                  context.pop();
                }
              },
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Container(
                            width: 250,
                            child: const AppText(
                              text:
                                  'Для загрузки информации из банка выберите банк из списка:',
                              size: 24,
                              weight: 3,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Divider(
                            thickness: 1.5,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Expanded(child: SelectBankWidget()),
                        ],
                      ),
                    ),
                    Center(
                      child: BlocBuilder<UploadFileBloc, UploadFileState>(
                        builder: (context, state) => AppButton(
                          child: AppText(
                            text: 'Готово',
                            size: 20,
                            weight: 4,
                            color: state.isSelected
                                ? AppColors.black
                                : AppColors.textunselect,
                          ),
                          onPressed: () {
                            if (!state.isSelected) {
                              return;
                            }
                            context
                                .read<UploadFileBloc>()
                                .add(UploadFileEvent.create());
                          },
                          backgroundColor: state.isSelected
                              ? AppColors.green
                              : AppColors.white,
                          overlayColor: AppColors.greenBorder,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}

class SelectBankWidget extends StatelessWidget {
  const SelectBankWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UploadFileBloc, UploadFileState>(
        builder: (context, state) {
      return ListView.builder(
          itemCount: state.bankList.length,
          itemBuilder: (context, index) {
            final items = state.bankList;
            return CardBankWidget(
                title: items[index].label,
                image: items[index].image,
                isSelected: index == state.currentBank,
                onTap: () {
                  context.read<UploadFileBloc>().add(UploadFileEvent.select(
                      index: index == state.currentBank ? -1 : index));
                });
          });
    });
  }
}

class CardBankWidget extends StatelessWidget {
  const CardBankWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.isSelected,
      required this.onTap});

  final String title;
  final JpgAsset image;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 20,
      ),
      title: Text(title),
      trailing: IconButton(
          onPressed: onTap,
          icon: isSelected
              ? const Icon(
                  Icons.radio_button_checked,
                  color: AppColors.red,
                )
              : const Icon(Icons.radio_button_unchecked)),
    );
  }
}
