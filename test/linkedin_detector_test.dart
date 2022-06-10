import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/linkedin/linkedin_detector.dart';
import 'package:url_recognizer/src/socials/linkedin/types/linkedin_company.dart';
import 'package:url_recognizer/src/socials/linkedin/types/linkedin_post.dart';
import 'package:url_recognizer/src/socials/linkedin/types/linkedin_profile.dart';
import 'package:url_recognizer/src/socials/linkedin/types/linkedin_profile_pub.dart';

void main() {
  group('Tests for LinkedinDetector methods', () {
    const String url = 'https://fr.linkedin.com/school/universit\u00e9-grenoble-alpes/';

    test('Should find matches for $url and return true', () {
      expect(
        const LinkedinDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const LinkedinDetector().build(url),
        const LinkedinCompany(
          url: url,
          permalink: 'universit\u00e9-grenoble-alpes',
          type: 'school',
        ),
      );
    });
  });

  group('Tests for LinkedinDetector methods', () {
    const String url = 'https://linkedin.com/company/dash-company.io';

    test('Should find matches for $url and return true', () {
      expect(
        const LinkedinDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const LinkedinDetector().build(url),
        const LinkedinCompany(
          url: url,
          permalink: 'dash-company.io',
          type: 'company',
        ),
      );
    });
  });

  group('Tests for LinkedinDetector methods', () {
    const String url = 'https://www.linkedin.com/company/1234567/';

    test('Should find matches for $url and return true', () {
      expect(
        const LinkedinDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const LinkedinDetector().build(url),
        const LinkedinCompany(
          url: url,
          permalink: '1234567',
          type: 'company',
        ),
      );
    });
  });

  group('Tests for LinkedinDetector methods', () {
    const String url = 'https://www.linkedin.com/feed/update/urn:li:activity:6665508550111912345/';

    test('Should find matches for $url and return true', () {
      expect(
        const LinkedinDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const LinkedinDetector().build(url),
        const LinkedinPost(
          url: url,
          activityId: '6665508550111912345',
        ),
      );
    });
  });

  group('Tests for LinkedinDetector methods', () {
    const String url = 'https://de.linkedin.com/in/peter-m\u00fcller-81a8/';

    test('Should find matches for $url and return true', () {
      expect(
        const LinkedinDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const LinkedinDetector().build(url),
        const LinkedinProfile(
          url: url,
          permalink: 'peter-m\u00fcller-81a8',
        ),
      );
    });
  });

  group('Tests for LinkedinDetector methods', () {
    const String url = 'https://linkedin.com/in/karllorey';

    test('Should find matches for $url and return true', () {
      expect(
        const LinkedinDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const LinkedinDetector().build(url),
        const LinkedinProfile(
          url: url,
          permalink: 'karllorey',
        ),
      );
    });
  });

  group('Tests for LinkedinDetector methods', () {
    const String url = 'https://linkedin.com/pub/karllorey/abc/123/be';

    test('Should find matches for $url and return true', () {
      expect(
        const LinkedinDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const LinkedinDetector().build(url),
        const LinkedinProfilePub(
          url: url,
          permalinkPub: 'karllorey',
        ),
      );
    });
  });

  group('Tests for LinkedinDetector methods', () {
    const String url = 'https://www.linkedin.com/pub/karllorey/abc/123/be';

    test('Should find matches for $url and return true', () {
      expect(
        const LinkedinDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const LinkedinDetector().build(url),
        const LinkedinProfilePub(
          url: url,
          permalinkPub: 'karllorey',
        ),
      );
    });
  });
}
