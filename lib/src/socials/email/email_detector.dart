import 'package:url_recognizer/src/socials/email/types/email_address.dart';
import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class EmailDetector extends SocialUrlDetector {
  const EmailDetector();

  @override
  SocialUrl? build(String text) {
    if(EmailAddress.hasMatch(text)) {
      return EmailAddress.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool email = EmailAddress.hasMatch(text);
    return email;
  }
}
