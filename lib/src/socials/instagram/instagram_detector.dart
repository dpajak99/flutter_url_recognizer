import 'package:url_recognizer/src/socials/instagram/types/instagram_profile.dart';
import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class InstagramDetector extends SocialUrlDetector {
  const InstagramDetector();

  @override
  SocialUrl? build(String text) {
    if (InstagramProfile.hasMatch(text)) {
      return InstagramProfile.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool profile = InstagramProfile.hasMatch(text);
    return profile;
  }
}
