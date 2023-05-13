import 'package:url_launcher/url_launcher.dart';

class LaunchBotRepositiryImpl {
  final Uri _url = Uri.parse('tg:resolve?domain=finance_auth_bot');
  Future<void> launchTgBot() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
