import 'package:finance_app/domain/launchTgBot/launch_event.dart';
import 'package:finance_app/domain/launchTgBot/launch_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositiries/launchBot/launch_bot_repositiry.dart';

class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  final LaunchBotRepository launchBotRepository;
  LaunchBloc({required this.launchBotRepository}) : super(LaunchTgState()) {
    on<LaunchEvent>((event, emit) async {
      await launchBotRepository.getLaunchTelegramBot();
      emit(LaunchTgState());
    });
  }
}
