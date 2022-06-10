import 'package:url_recognizer/src/socials/social_url.dart';

abstract class SocialUrlDetector {
  const SocialUrlDetector();

  bool hasMatches(String text);
  SocialUrl? build(String text);
}