import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/instagram/instagram_detector.dart';
import 'package:url_recognizer/src/socials/instagram/types/instagram_profile.dart';

void main() {
  group('Tests for FacebookDetector methods', () {
    const String url = 'https://instagram.com/__disco__dude';
    test('Should find matches for $url and return true', () {
      expect(
        const InstagramDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const InstagramDetector().build(url),
        const InstagramProfile(
          username: '__disco__dude',
          url: url,
        ),
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://instagram.com/disco.dude';

    test('Should find matches for $url and return true', () {
      expect(
        const InstagramDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const InstagramDetector().build(url),
        const InstagramProfile(
          username: 'disco.dude',
          url: url,
        ),
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://www.instagr.am/__disco__dude';

    test('Should find matches for $url and return true', () {
      expect(
        const InstagramDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const InstagramDetector().build(url),
        const InstagramProfile(
          username: '__disco__dude',
          url: url,
        ),
      );
    });
  });
}
