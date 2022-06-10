import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/reddit/reddit_detector.dart';
import 'package:url_recognizer/src/socials/reddit/types/reddit_user.dart';

void main() {
  group('Tests for RedditDetector methods', () {
    const String url = 'https://old.reddit.com/user/ar-guetita';

    test('Should find matches for $url and return true', () {
      expect(
        const RedditDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const RedditDetector().build(url),
        const RedditUser(
          url: url,
          username: 'ar-guetita',
        ),
      );
    });
  });

  group('Tests for RedditDetector methods', () {
    const String url = 'https://reddit.com/u/ar-guetita';

    test('Should find matches for $url and return true', () {
      expect(
        const RedditDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const RedditDetector().build(url),
        const RedditUser(
          url: url,
          username: 'ar-guetita',
        ),
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://reddit.com/r/de';

    test('Should look for matches for $url and return false', () {
      expect(
        const RedditDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const RedditDetector().build(url),
        null,
      );
    });
  });
}
