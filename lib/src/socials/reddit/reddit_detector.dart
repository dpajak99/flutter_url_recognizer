import 'package:url_recognizer/src/socials/reddit/types/reddit_user.dart';
import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class RedditDetector extends SocialUrlDetector {
  const RedditDetector();

  @override
  SocialUrl? build(String text) {
    if(RedditUser.hasMatch(text)) {
      return RedditUser.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool profile = RedditUser.hasMatch(text);
    return profile;
  }
}
