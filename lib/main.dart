
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/state/auth/auth_bloc.dart';
import 'package:finance_app/domain/state/language/language_bloc.dart';
import 'package:finance_app/domain/state/subscription/subscription_bloc.dart';
import 'package:finance_app/router/app_router.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:finance_app/ui/theme/app_dark_theme.dart';
import 'package:finance_app/ui/theme/app_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjector();
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
      providers: _globalBlocs(),
      child: MultiBlocListener(
        listeners: _globalListeners(),
        child: BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, state) {
            return AdaptiveTheme(
              light: buildLightTheme(),
              dark: buildDarkTheme(),
              initial: AdaptiveThemeMode.light,
              builder: (light, dark) => MaterialApp.router(
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                locale: state.selectedLocale,
                supportedLocales: AppLocalizations.supportedLocales,
                key: _appKey,
                debugShowCheckedModeBanner: false,
                theme: light,
                darkTheme: dark,
                routerConfig: router,
              ),
            );
          },
        ),
      ),
    );
  }
}

List<BlocProvider> _globalBlocs() {
  return [
    BlocProvider<AuthBloc>(
      create: (context) => injector.get()..add(const AuthEvent.init()),
    ),
    // BlocProvider<SubscriptionBloc>(
    //   create: (context) => injector.get(),
    // ),
    BlocProvider<SubscriptionBloc>(
      create: (context) => SubscriptionBloc(),
    ),
    BlocProvider<LanguageBloc>(
      create: (context) => LanguageBloc(),
    )
  ];
}


// ignore: strict_raw_type
List<BlocListener> _globalListeners() {
  return [
    BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthAuthedState) {
          AppRouter.rootNavigatorKey.currentContext
              ?.goNamed(MobileRoutes.home.name);
        } else {
          AppRouter.rootNavigatorKey.currentContext
              ?.goNamed(MobileRoutes.login.name);
        }
      },
      listenWhen: (previous, current) => previous != current,
    ),
  ];
}
