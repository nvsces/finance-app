import 'package:dio/dio.dart';
import 'package:finance_app/data/api/api_handler.dart';
import 'package:finance_app/data/repositiries/auth/abstract_auth_repository.dart';
import 'package:finance_app/domain/state/auth/auth_bloc.dart';
import 'package:finance_app/domain/state/auth/login_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/repositiries/auth/auth_repository.dart';

final injector = GetIt.instance;

Future<void> initIjector() async {
  final sharedPref = await SharedPreferences.getInstance();
  injector.registerSingleton<SharedPreferences>(sharedPref);
  injector.registerSingleton<Dio>(Dio());
  injector.registerSingleton<ApiHandler>(ApiHandler(client: injector.get()));
  injector.registerSingleton<AbstractAuthRepository>(
      AuthRepository(injector.get(), injector.get()));

  registerBlocs();
}

void registerBlocs() {
  injector.registerSingleton<AuthBloc>(AuthBloc(injector.get()));
  injector.registerFactory<LoginCubit>(() => LoginCubit(injector.get()));
}
