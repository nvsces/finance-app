import 'package:finance_app/data/repositiries/finance/finance_repositiry.dart';
import 'package:finance_app/domain/state/upload/upload_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

final GoRouter router = AppRouter().router();

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final GlobalKey _appKey = GlobalKey();
  final financeRepository = FinanceRepository();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  UploadBloc(financeRepository: financeRepository)),
        ],
        child: MaterialApp.router(
          key: _appKey,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.dark,
          routerConfig: router,
        ));
  }
}
