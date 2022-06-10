import 'package:url_recognizer/src/socials/email/email_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

abstract class EmailAddress extends EmailUrl {

  const EmailAddress({required String url}) : super(url: url);

  @override
  String get title => email;

  String get email;
}
