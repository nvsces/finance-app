import 'launch_bot_repositiry_impl.dart';

class LaunchBotRepository {
  final LaunchBotRepositiryImpl repositoryImpl = LaunchBotRepositiryImpl();
  Future<void> getLaunchTelegramBot() => repositoryImpl.launchTgBot();
}
