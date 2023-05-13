// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:url_launcher/url_launcher.dart';

class LaunchTgBot {
  // tgBot: tg:resolve?domain=finance_auth_bot
  // tgDownload: https://play.google.com/store/apps/details?id=org.telegram.messenger
  final Uri _url = Uri.parse('tg:resolve?domain=finance_auth_bot');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_url');
    }
  }
}
