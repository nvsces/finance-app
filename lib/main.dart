import 'package:finance_app/domain/state/auth/auth_bloc.dart';
import 'package:finance_app/domain/state/auth/auth_state.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'di/injector.dart';
import 'domain/state/auth/auth_event.dart';
import 'router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initIjector();
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

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
              create: (context) =>
                  injector.get<AuthBloc>()..add(AuthInitEvent()))
        ],
        child: BlocListener<AuthBloc, AuthState>(
          child: MaterialApp.router(
            key: _appKey,
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.dark,
            routerConfig: router,
          ),
          listener: ((context, state) {
            if (state is AuthAuthedState) {
              AppRouter.rootNavigatorKey.currentContext
                  ?.goNamed(MobileRoutes.expenses.name);
            } else {
              AppRouter.rootNavigatorKey.currentContext
                  ?.goNamed(MobileRoutes.login.name);
            }
          }),
        ));
  }
}
