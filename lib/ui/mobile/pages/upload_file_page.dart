import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/state/upload_file/upload_file_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UploadFilePage extends StatelessWidget {
  const UploadFilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => injector.get<UploadFileBloc>(),
        child: Scaffold(
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
        initial: () => Center(
          child: TextButton(
            child: Text('Загрузить файл'),
            onPressed: () {
              context.read<UploadFileBloc>().add(UploadFileEvent.create());
            },
          ),
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        success: () => Center(child: Text('Файл успешно загружен')),
        failure: () => Center(child: Text('Ошибка загрузки файла :(')),
      );
    });
  }
}
