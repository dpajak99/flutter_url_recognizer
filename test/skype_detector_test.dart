import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/skype/skype_detector.dart';
import 'package:url_recognizer/src/socials/skype/types/skype_profile.dart';

void main() {
  group('Tests for SkypeDetector methods', () {
    const String url = 'skype:echo123';

    test('Should find matches for $url and return true', () {
      expect(
        const SkypeDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const SkypeDetector().build(url),
        const SkypeProfile(
          url: url,
          username: 'echo123',
        ),
      );
    });
  });

  group('Tests for SkypeDetector methods', () {
    const String url = 'skype:echo123?call';

    test('Should find matches for $url and return true', () {
      expect(
        const SkypeDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const SkypeDetector().build(url),
        const SkypeProfile(
          url: url,
          username: 'echo123',
        ),
      );
    });
  });
}
