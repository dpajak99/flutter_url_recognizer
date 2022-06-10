import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/socials/twitter/types/twitter_status.dart';
import 'package:url_recognizer/src/socials/twitter/types/twitter_user.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_channel.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_user.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_video.dart';

class TwitterDetector extends SocialUrlDetector {
  const TwitterDetector();

  @override
  SocialUrl? build(String text) {
    if(TwitterStatus.hasMatch(text)) {
      return TwitterStatus.fromUrl(text);
    } else if (TwitterUser.hasMatch(text)) {
      return TwitterUser.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool user = TwitterUser.hasMatch(text);
    bool status = TwitterStatus.hasMatch(text);
    return user || status;
  }
}
