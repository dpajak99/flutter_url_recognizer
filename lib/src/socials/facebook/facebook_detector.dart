import 'package:url_recognizer/src/socials/facebook/types/facebook_profile.dart';
import 'package:url_recognizer/src/socials/facebook/types/facebook_profile_by_id.dart';
import 'package:url_recognizer/src/socials/instagram/types/instagram_profile.dart';
import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class FacebookDetector extends SocialUrlDetector {
  const FacebookDetector();

  @override
  SocialUrl? build(String text) {
    if (FacebookProfileById.hasMatch(text)) {
      return FacebookProfileById.fromUrl(text);
    } else if (FacebookProfile.hasMatch(text)) {
      return FacebookProfile.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool profile = FacebookProfile.hasMatch(text);
    bool profileById = FacebookProfileById.hasMatch(text);
    return profile || profileById;
  }
}
