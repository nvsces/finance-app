import 'package:finance_app/data/api/api_handler.dart';
import 'package:finance_app/data/api/dio_helper.dart';
import 'package:finance_app/data/repositiries/auth/abstract_auth_repository.dart';
import 'package:finance_app/data/repositiries/auth/auth_repository_impl.dart';
import 'package:finance_app/data/repositiries/finance/finance_repositiry.dart';
import 'package:finance_app/data/repositiries/finance/finance_repository_impl.dart';
import 'package:finance_app/data/repositiries/transaction/transaction_repository.dart';
import 'package:finance_app/data/repositiries/transaction/transaction_repository_impl.dart';
import 'package:finance_app/domain/state/auth/auth_bloc.dart';
import 'package:finance_app/domain/state/auth/login_cubit.dart';
import 'package:finance_app/domain/state/expenses/expenses_bloc.dart';
import 'package:finance_app/domain/state/subscription/subscription_bloc.dart';
import 'package:finance_app/domain/state/upload_file/upload_file_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final injector = GetIt.instance;

Future<void> initInjector() async {
  await _registerLibraries();
  await _registerApi();
  await _registerRepositories();
  await registerBloc();
}

Future<void> _registerLibraries() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  injector.registerSingleton<SharedPreferences>(sharedPrefs);
}

Future<void> _registerApi() async {
  injector.registerSingleton(DioHelper());
  injector.registerSingleton(
    ApiHandler(
      injector.get<DioHelper>().dio,
    ),
  );
}

Future<void> _registerRepositories() async {
  injector.registerSingleton<AbstractAuthRepository>(
    AuthRepositoryImpl(injector.get(), injector.get()),
  );
  injector.registerSingleton<AbstractFinanceRepository>(
    FinanceRepository(injector.get()),
  );
  injector.registerSingleton<TransactionRepository>(
    TransactionRepositoryImpl(injector.get()),
  );
}

Future<void> registerBloc() async {
  //Singleton blocs
  injector.registerSingleton(
    AuthBloc(injector.get(), dioHelper: injector.get<DioHelper>()),
  );

  injector.registerFactory(() => ExpensesBloc(injector.get()));

  injector.registerFactory(() => LoginCubit(injector.get()));

  injector.registerFactory(() => UploadFileBloc(injector.get()));

  // injector.registerFactory(() => SubscriptionBloc(injector.get()));
}
