import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/socials/telegram/types/telegram_profile.dart';
import 'package:url_recognizer/src/socials/twitter/types/twitter_status.dart';
import 'package:url_recognizer/src/socials/twitter/types/twitter_user.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_channel.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_user.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_video.dart';

class TelegramDetector extends SocialUrlDetector {
  const TelegramDetector();

  @override
  SocialUrl? build(String text) {
    if(TelegramProfile.hasMatch(text)) {
      return TelegramProfile.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool profile = TelegramProfile.hasMatch(text);
    return profile;
  }
}
