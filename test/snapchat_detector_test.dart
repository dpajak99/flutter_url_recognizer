import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/snapchat/snapchat_detector.dart';
import 'package:url_recognizer/src/socials/snapchat/types/snapchat_profile.dart';

void main() {
  group('Tests for SnapchatDetector methods', () {
    const String url = 'https://www.snapchat.com/add/peterparker';

    test('Should find matches for $url and return true', () {
      expect(
        const SnapchatDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const SnapchatDetector().build(url),
        const SnapchatProfile(
          url: url,
          username: 'peterparker',
        ),
      );
    });
  });
}
