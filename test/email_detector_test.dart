import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/email/email_detector.dart';
import 'package:url_recognizer/src/socials/email/types/email_address.dart';

void main() {
  group('Tests for EmailDetector methods', () {
    const String url = 'jeff@amazon.com';

    test('Should find matches for $url and return true', () {
      expect(
        const EmailDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const EmailDetector().build(url),
        const EmailAddress(
          url: url,
          email: 'jeff@amazon.com',
        ),
      );
    });
  });

  group('Tests for EmailDetector methods', () {
    const String url = 'mailto:jeff@amazon.com';

    test('Should find matches for $url and return true', () {
      expect(
        const EmailDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const EmailDetector().build(url),
        const EmailAddress(
          url: url,
          email: 'jeff@amazon.com',
        ),
      );
    });
  });

  group('Tests for EmailDetector methods', () {
    const String url = 'mailto:plususer+test@gmail.com';

    test('Should find matches for $url and return true', () {
      expect(
        const EmailDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const EmailDetector().build(url),
        const EmailAddress(
          url: url,
          email: 'plususer+test@gmail.com',
        ),
      );
    });
  });
}
