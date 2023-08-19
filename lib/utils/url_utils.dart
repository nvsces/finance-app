import 'package:url_launcher/url_launcher.dart';


// ignore: avoid_classes_with_only_static_members
class UrlUtils {
  // tgBot: tg:resolve?domain=finance_auth_bot
// tgDownload: https://play.google.com/store/apps/details?id=org.telegram.messenger

static Future<void> openBot() async {
  final Uri url = Uri.parse('tg:resolve?domain=finance_auth_bot');
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}
}
