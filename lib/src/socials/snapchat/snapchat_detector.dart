import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/socials/snapchat/types/snapchat_profile.dart';
import 'package:url_recognizer/src/socials/telegram/types/telegram_profile.dart';
import 'package:url_recognizer/src/socials/twitter/types/twitter_status.dart';
import 'package:url_recognizer/src/socials/twitter/types/twitter_user.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_channel.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_user.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_video.dart';

class SnapchatDetector extends SocialUrlDetector {
  const SnapchatDetector();

  @override
  SocialUrl? build(String text) {
    if(SnapchatProfile.hasMatch(text)) {
      return SnapchatProfile.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool profile = SnapchatProfile.hasMatch(text);
    return profile;
  }
}
