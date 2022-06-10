import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/medium/medium_detector.dart';
import 'package:url_recognizer/src/socials/medium/types/medium_post.dart';
import 'package:url_recognizer/src/socials/medium/types/medium_subdomain_post.dart';
import 'package:url_recognizer/src/socials/medium/types/medium_user.dart';
import 'package:url_recognizer/src/socials/medium/types/medium_user_by_id.dart';

void main() {
  group('Tests for MediumDetector methods', () {
    const String url = 'https://medium.com/@karllorey/keeping-pandas-dataframes-clean-when-importing-json-348d3439ed67';

    test('Should find matches for $url and return true', () {
      expect(
        const MediumDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const MediumDetector().build(url),
        const MediumPost(
          url: url,
          postId: '348d3439ed67',
          slug: 'keeping-pandas-dataframes-clean-when-importing-json',
          username: 'karllorey',
        ),
      );
    });
  });

  group('Tests for MediumDetector methods', () {
    const String url = 'https://medium.com/does-exist/some-post-123abc';

    test('Should find matches for $url and return true', () {
      expect(
        const MediumDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const MediumDetector().build(url),
        const MediumPost(
          url: url,
          postId: '123abc',
          publication: 'does-exist',
          slug: 'some-post',
        ),
      );
    });
  });

  group('Tests for MediumDetector methods', () {
    const String url = 'https://onezero.medium.com/what-facebooks-remote-work-policy-means-for-the-future-of-tech-salaries-everywhere-edf859226b62?source=grid_home------';

    test('Should find matches for $url and return true', () {
      expect(
        const MediumDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const MediumDetector().build(url),
        const MediumSubdomainPost(
          url: url,
          postId: 'edf859226b62',
          publication: 'onezero',
          slug: 'what-facebooks-remote-work-policy-means-for-the-future-of-tech-salaries-everywhere',
        ),
      );
    });
  });

  group('Tests for MediumDetector methods', () {
    const String url = 'https://medium.com/@karllorey';

    test('Should find matches for $url and return true', () {
      expect(
        const MediumDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const MediumDetector().build(url),
        const MediumUser(
          url: url,
          username: 'karllorey',
        ),
      );
    });
  });

  group('Tests for MediumDetector methods', () {
    const String url = 'https://medium.com/u/b3d3d3653c2c?source=post_page-----da92b81b85ef----------------------';

    test('Should find matches for $url and return true', () {
      expect(
        const MediumDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const MediumDetector().build(url),
        const MediumUserById(
          url: url,
          userId: 'b3d3d3653c2c',
        ),
      );
    });
  });
}
