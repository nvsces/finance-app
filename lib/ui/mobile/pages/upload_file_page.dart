import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/state/upload_file/upload_file_bloc.dart';
import 'package:finance_app/ui/theme/app_button.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:finance_app/ui/theme/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class UploadFilePage extends StatelessWidget {
  const UploadFilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => injector.get<UploadFileBloc>(),
        child: Scaffold(
          appBar: AppBar(),
          body: _UploadFileContent(),
        ));
  }
}

class _UploadFileContent extends StatelessWidget {
  const _UploadFileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UploadFileBloc, UploadFileState>(
        builder: (context, state) {
      return state.when(
        initial: () => Container(
          margin:
              const EdgeInsets.only(right: 15, top: 40, left: 15, bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppButton(
                  child: const AppText(text: 'Назад', size: 20),
                  func: () {
                    context.go('/expenses');
                  }),
              Column(
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
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/jpg/сбер.jpg'),
                      radius: 20,
                    ),
                    title: const Text('Сбербанк'),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.adjust_rounded)),
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/jpg/тинькофф.jpg'),
                      radius: 20,
                    ),
                    title: const Text('Тинькофф'),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.adjust_rounded)),
                  ),
                ],
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
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        success: () => Center(child: Text('Файл успешно загружен')),
        failure: () => Center(child: Text('Ошибка загрузки файла :(')),
      );
    });
  }
}
