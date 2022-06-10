import 'package:url_recognizer/src/socials/medium/types/medium_post.dart';
import 'package:url_recognizer/src/socials/medium/types/medium_subdomain_post.dart';
import 'package:url_recognizer/src/socials/medium/types/medium_user.dart';
import 'package:url_recognizer/src/socials/medium/types/medium_user_by_id.dart';
import 'package:url_recognizer/src/socials/phone/types/phone_number.dart';
import 'package:url_recognizer/src/socials/reddit/types/reddit_user.dart';
import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class MediumDetector extends SocialUrlDetector {
  const MediumDetector();

  @override
  SocialUrl? build(String text) {
    if(MediumPost.hasMatch(text)) {
      return MediumPost.fromUrl(text);
    } else if(MediumSubdomainPost.hasMatch(text)) {
      return MediumSubdomainPost.fromUrl(text);
    } else if(MediumUser.hasMatch(text)) {
      return MediumUser.fromUrl(text);
    } else if(MediumUserById.hasMatch(text)) {
      return MediumUserById.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool post = MediumPost.hasMatch(text);
    bool subdomainPost = MediumSubdomainPost.hasMatch(text);
    bool user = MediumUser.hasMatch(text);
    bool userById = MediumUserById.hasMatch(text);
    return post | subdomainPost | user | userById;
  }
}
