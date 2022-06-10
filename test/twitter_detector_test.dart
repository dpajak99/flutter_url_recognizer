import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/telegram/telegram_detector.dart';
import 'package:url_recognizer/src/socials/twitter/twitter_detector.dart';
import 'package:url_recognizer/src/socials/twitter/types/twitter_status.dart';
import 'package:url_recognizer/src/socials/twitter/types/twitter_user.dart';

void main() {
  group('Tests for TelegramDetector methods', () {
    const String url = 'http://twitter.com/@karllorey';

    test('Should find matches for $url and return true', () {
      expect(
        const TwitterDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const TwitterDetector().build(url),
        const TwitterUser(
          url: url,
          username: 'karllorey',
        ),
      );
    });
  });

  group('Tests for TelegramDetector methods', () {
    const String url = 'http://twitter.com/karllorey';

    test('Should find matches for $url and return true', () {
      expect(
        const TwitterDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const TwitterDetector().build(url),
        const TwitterUser(
          url: url,
          username: 'karllorey',
        ),
      );
    });
  });

  group('Tests for TelegramDetector methods', () {
    const String url = 'https://twitter.com/karllorey';

    test('Should find matches for $url and return true', () {
      expect(
        const TwitterDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const TwitterDetector().build(url),
        const TwitterUser(
          url: url,
          username: 'karllorey',
        ),
      );
    });
  });

  group('Tests for TelegramDetector methods', () {
    const String url = 'https://twitter.com/karllorey/status/1259924082067374088';

    test('Should find matches for $url and return true', () {
      expect(
        const TwitterDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const TwitterDetector().build(url),
        const TwitterStatus(
          url: url,
          tweetId: '1259924082067374088',
          username: 'karllorey',
        ),
      );
    });
  });

  group('Tests for TelegramDetector methods', () {
    const String url = 'https://twitter.com/home';

    test('Should look for matches for $url and return false', () {
      expect(
        const TelegramDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const TelegramDetector().build(url),
        null,
      );
    });
  });

  group('Tests for TelegramDetector methods', () {
    const String url = 'https://twitter.com/privacy';

    test('Should look for matches for $url and return false', () {
      expect(
        const TelegramDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const TelegramDetector().build(url),
        null,
      );
    });
  });

  group('Tests for TelegramDetector methods', () {
    const String url = 'https://twitter.com/share';

    test('Should look for matches for $url and return false', () {
      expect(
        const TelegramDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const TelegramDetector().build(url),
        null,
      );
    });
  });

  group('Tests for TelegramDetector methods', () {
    const String url = 'https://twitter.com/tos';

    test('Should look for matches for $url and return false', () {
      expect(
        const TelegramDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const TelegramDetector().build(url),
        null,
      );
    });
  });
}
