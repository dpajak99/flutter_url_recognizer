import 'package:url_recognizer/src/socials/linkedin/types/linkedin_company.dart';
import 'package:url_recognizer/src/socials/linkedin/types/linkedin_post.dart';
import 'package:url_recognizer/src/socials/linkedin/types/linkedin_profile.dart';
import 'package:url_recognizer/src/socials/linkedin/types/linkedin_profile_pub.dart';
import 'package:url_recognizer/src/socials/reddit/types/reddit_user.dart';
import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class LinkedinDetector extends SocialUrlDetector {
  const LinkedinDetector();

  @override
  SocialUrl? build(String text) {
    if (LinkedinCompany.hasMatch(text)) {
      return LinkedinCompany.fromUrl(text);
    } else if (LinkedinPost.hasMatch(text)) {
      return LinkedinPost.fromUrl(text);
    } else if (LinkedinProfile.hasMatch(text)) {
      return LinkedinProfile.fromUrl(text);
    } else if (LinkedinProfilePub.hasMatch(text)) {
      return LinkedinProfilePub.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool company = LinkedinCompany.hasMatch(text);
    bool post = LinkedinPost.hasMatch(text);
    bool profile = LinkedinProfile.hasMatch(text);
    bool profilePub = LinkedinProfilePub.hasMatch(text);
    return company || post || profile || profilePub;
  }
}
