import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/phone/phone_detector.dart';
import 'package:url_recognizer/src/socials/phone/types/phone_number.dart';

void main() {
  group('Tests for PhoneDetector methods', () {
    const String url = '+49900123456';

    test('Should find matches for $url and return true', () {
      expect(
        const PhoneDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const PhoneDetector().build(url),
        const PhoneNumber(
            url: url,
            number: '+49900123456'
        ),
      );
    });
  });
}
