import 'package:url_launcher/url_launcher.dart';

void openWhatsApp() async {
  final phoneNumber = 918590364600;
  final message = Uri.encodeComponent('Hello, how are you?');

  final url = Uri.parse('whatsapp://send?phone=$phoneNumber&text=$message');
  // final phoneNumber = 918590364600;
  // final url = Uri.parse('https://wa.me/$phoneNumber/?text=$message');

  await launchUrl(url);
}
