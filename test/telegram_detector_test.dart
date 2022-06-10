import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/telegram/telegram_detector.dart';
import 'package:url_recognizer/src/socials/telegram/types/telegram_profile.dart';

void main() {
  group('Tests for TelegramDetector methods', () {
    const String url = 'https://t.me/peterparker';

    test('Should find matches for $url and return true', () {
      expect(
        const TelegramDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const TelegramDetector().build(url),
        const TelegramProfile(
          url: url,
          username: 'peterparker',
        ),
      );
    });
  });
}
