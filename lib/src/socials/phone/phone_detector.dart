import 'package:url_recognizer/src/socials/phone/types/phone_number.dart';
import 'package:url_recognizer/src/socials/reddit/types/reddit_user.dart';
import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class PhoneDetector extends SocialUrlDetector {
  const PhoneDetector();

  @override
  SocialUrl? build(String text) {
    if(PhoneNumber.hasMatch(text)) {
      return PhoneNumber.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool phone = PhoneNumber.hasMatch(text);
    return phone;
  }
}
