import 'package:flutter_test/flutter_test.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_channel.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_user.dart';
import 'package:url_recognizer/src/socials/youtube/types/youtube_video.dart';
import 'package:url_recognizer/src/socials/youtube/youtube_detector.dart';

void main() {
  group('Tests for YoutubeDetector methods', () {
    const String url = 'https://www.youtube.com/channel/UC3y00Z1zFPc-8Z9xg8ydC-A';

    test('Should find matches for $url and return true', () {
      expect(
        const YoutubeDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const YoutubeDetector().build(url),
        const YoutubeChannel(
          url: url,
          id: 'UC3y00Z1zFPc-8Z9xg8ydC-A',
        ),
      );
    });
  });

  group('Tests for YoutubeDetector methods', () {
    const String url = 'https://www.youtube.com/user/JPPGmbH';

    test('Should find matches for $url and return true', () {
      expect(
        const YoutubeDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const YoutubeDetector().build(url),
        const YoutubeUser(
          url: url,
          username: 'JPPGmbH',
        ),
      );
    });
  });

  group('Tests for YoutubeDetector methods', () {
    const String url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';

    test('Should find matches for $url and return true', () {
      expect(
        const YoutubeDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const YoutubeDetector().build(url),
        const YoutubeVideo(
          id: 'dQw4w9WgXcQ',
          url: url,
        ),
      );
    });
  });

  group('Tests for YoutubeDetector methods', () {
    const String url = 'https://youtu.be/dQw4w9WgXcQ';

    test('Should find matches for $url and return true', () {
      expect(
        const YoutubeDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const YoutubeDetector().build(url),
        const YoutubeVideo(
          id: 'dQw4w9WgXcQ',
          url: url,
        ),
      );
    });
  });

  group('Tests for YoutubeDetector methods', () {
    const String url = 'https://youtube.com/embed/dQw4w9WgXcQ';

    test('Should find matches for $url and return true', () {
      expect(
        const YoutubeDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const YoutubeDetector().build(url),
        const YoutubeVideo(
          id: 'dQw4w9WgXcQ',
          url: url,
        ),
      );
    });
  });

  group('Tests for YoutubeDetector methods', () {
    const String url = 'https://youtube.com/watch?v=6_b7RDuLwcI';

    test('Should find matches for $url and return true', () {
      expect(
        const YoutubeDetector().hasMatches(url),
        true,
      );
    });

    test('Should build object for $url', () {
      expect(
        const YoutubeDetector().build(url),
        const YoutubeVideo(
          id: '6_b7RDuLwcI',
          url: url,
        ),
      );
    });
  });
}
