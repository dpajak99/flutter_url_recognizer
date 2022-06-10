import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/facebook/facebook_detector.dart';
import 'package:url_recognizer/src/socials/facebook/types/facebook_profile.dart';
import 'package:url_recognizer/src/socials/facebook/types/facebook_profile_by_id.dart';

void main() {
  group('Tests for FacebookDetector methods', () {
    const String url = 'http://fb.com/peter_parker-miller';
    test('Should find matches for $url and return true', () {
      expect(
        const FacebookDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const FacebookDetector().build(url),
        const FacebookProfile(
          profile: 'peter_parker-miller',
          url: url,
        ),
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://facebook.com/gaming';

    test('Should look for matches for $url and return false', () {
      expect(
        const FacebookDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const FacebookDetector().build(url),
        null,
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://facebook.com/gaming';

    test('Should look for matches for $url and return false', () {
      expect(
        const FacebookDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const FacebookDetector().build(url),
        null,
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://facebook.com/help';

    test('Should look for matches for $url and return false', () {
      expect(
        const FacebookDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const FacebookDetector().build(url),
        null,
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://facebook.com/home.php';

    test('Should look for matches for $url and return false', () {
      expect(
        const FacebookDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const FacebookDetector().build(url),
        null,
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://facebook.com/marketplace';

    test('Should look for matches for $url and return false', () {
      expect(
        const FacebookDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const FacebookDetector().build(url),
        null,
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://facebook.com/me';

    test('Should look for matches for $url and return false', () {
      expect(
        const FacebookDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const FacebookDetector().build(url),
        null,
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://facebook.com/messages';

    test('Should look for matches for $url and return false', () {
      expect(
        const FacebookDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const FacebookDetector().build(url),
        null,
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://facebook.com/peterparker';

    test('Should find matches for $url and return true', () {
      expect(
        const FacebookDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const FacebookDetector().build(url),
        const FacebookProfile(
          profile: 'peterparker',
          url: url,
        ),
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://facebook.com/search';

    test('Should look for matches for $url and return false', () {
      expect(
        const FacebookDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const FacebookDetector().build(url),
        null,
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://facebook.com/watch';

    test('Should look for matches for $url and return false', () {
      expect(
        const FacebookDetector().hasMatches(url),
        false,
      );
    });

    test('Should return null for $url', () {
      expect(
        const FacebookDetector().build(url),
        null,
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://www.facebook.com/100004123456789';

    test('Should find matches for $url and return true', () {
      expect(
        const FacebookDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const FacebookDetector().build(url),
        const FacebookProfileById(
          id: '100004123456789',
          url: url,
        ),
      );
    });
  });

  group('Tests for FacebookDetector methods', () {
    const String url = 'https://www.facebook.com/profile.php?id=100004123456789';

    test('Should find matches for $url and return true', () {
      expect(
        const FacebookDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const FacebookDetector().build(url),
        const FacebookProfileById(
          id: '100004123456789',
          url: url,
        ),
      );
    });
  });
}
