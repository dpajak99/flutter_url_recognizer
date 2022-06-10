import 'package:url_recognizer/src/socials/github/types/github_repo.dart';
import 'package:url_recognizer/src/socials/github/types/github_user.dart';
import 'package:url_recognizer/src/socials/instagram/types/instagram_profile.dart';
import 'package:url_recognizer/src/socials/social_url_detector.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class GithubDetector extends SocialUrlDetector {
  const GithubDetector();

  @override
  SocialUrl? build(String text) {
    if (GithubRepo.hasMatch(text)) {
      return GithubRepo.fromUrl(text);
    } else if (GithubUser.hasMatch(text)) {
      return GithubUser.fromUrl(text);
    }
    return null;
  }

  @override
  bool hasMatches(String text) {
    bool repo = GithubRepo.hasMatch(text);
    bool user = GithubUser.hasMatch(text);
    return repo || user;
  }
}
