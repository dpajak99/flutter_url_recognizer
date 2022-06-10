import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/github/github_detector.dart';
import 'package:url_recognizer/src/socials/github/types/github_repo.dart';
import 'package:url_recognizer/src/socials/github/types/github_user.dart';

void main() {
  group('Tests for FacebookDetector methods', () {
    const String url = 'https://github.com/lorey/';
    test('Should find matches for $url and return true', () {
      expect(
        const GithubDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const GithubDetector().build(url),
        const GithubUser(
          login: 'lorey',
          url: url,
        ),
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://github.com/lorey/socials';

    test('Should find matches for $url and return true', () {
      expect(
        const GithubDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const GithubDetector().build(url),
        const GithubRepo(
          login: 'lorey',
          repo: 'socials',
          url: url,
        ),
      );
    });
  });
}
