import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_channel.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_user.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_video.dart';

class YoutubeDetector extends SocialUrlDetector {
  const YoutubeDetector();

  @override
  SocialUrl? build(String text) {
    if (YoutubeChannel.hasMatch(text)) {
      return YoutubeChannel.fromUrl(text);
    } else if(YoutubeUser.hasMatch(text)) {
      return YoutubeUser.fromUrl(text);
    } else if(YoutubeVideo.hasMatch(text)) {
      return YoutubeVideo.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool channel = YoutubeChannel.hasMatch(text);
    bool user = YoutubeUser.hasMatch(text);
    bool video = YoutubeVideo.hasMatch(text);
    return channel || user || video;
  }
}
