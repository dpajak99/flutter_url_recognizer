import 'package:url_recognizer/src/socials/email/email_detector.dart';
import 'package:url_recognizer/src/socials/facebook/facebook_detector.dart';
import 'package:url_recognizer/src/socials/github/github_detector.dart';
import 'package:url_recognizer/src/socials/instagram/instagram_detector.dart';
import 'package:url_recognizer/src/socials/linkedin/linkedin_detector.dart';
import 'package:url_recognizer/src/socials/medium/medium_detector.dart';
import 'package:url_recognizer/src/socials/phone/phone_detector.dart';
import 'package:url_recognizer/src/socials/reddit/reddit_detector.dart';
import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/socials/skype/skype_detector.dart';
import 'package:url_recognizer/src/socials/snapchat/snapchat_detector.dart';
import 'package:url_recognizer/src/socials/telegram/telegram_detector.dart';
import 'package:url_recognizer/src/socials/twitter/twitter_detector.dart';
import 'package:url_recognizer/src/socials/youtube/youtube_detector.dart';

const List<SocialUrlDetector> kDefaultDetectors = <SocialUrlDetector>[
  EmailDetector(),
  FacebookDetector(),
  GithubDetector(),
  InstagramDetector(),
  LinkedinDetector(),
  MediumDetector(),
  PhoneDetector(),
  RedditDetector(),
  SkypeDetector(),
  SnapchatDetector(),
  TelegramDetector(),
  TwitterDetector(),
  YoutubeDetector(),
];

class UrlRecognizer {
  static SocialUrl? findObject({
    required String url,
    List<SocialUrlDetector> recognizers = kDefaultDetectors,
  }) {
    for (SocialUrlDetector regExpDetector in recognizers) {
      if (regExpDetector.hasMatches(url)) {
        return regExpDetector.build(url);
      }
    }
    return null;
  }
}
