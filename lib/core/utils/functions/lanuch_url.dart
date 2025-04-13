import 'package:bookly_app/core/utils/functions/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lanuchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri _uri = Uri.parse(url);
    if (await canLaunchUrl(_uri)) {
      await launchUrl(_uri);
    } else {
      customSnackBar(context, "can't lanuch $url");
    }
  }
}
