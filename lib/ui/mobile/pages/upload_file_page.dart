import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/entity/bank_enum.dart';
import 'package:finance_app/domain/state/upload_file/upload_file_bloc.dart';
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
              func: () {
                context.pop();
              }),
        ),
        Expanded(
          child: BlocBuilder<UploadFileBloc, UploadFileState>(
              builder: (context, state) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
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
                    child: AppButton(
                      child: AppText(
                        text: 'Готово',
                        size: 20,
                        weight: 4,
                      ),
                      func: () {
                        context
                            .read<UploadFileBloc>()
                            .add(UploadFileEvent.create());
                      },
                      backgroundColor: AppColors.green,
                      borderColor: AppColors.greenBorder,
                      overlayColor: AppColors.greenBorder,
                    ),
                  ),
                ],
              ),
            );
          }),
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
                  context
                      .read<UploadFileBloc>()
                      .add(UploadFileEvent.select(index: index));
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
