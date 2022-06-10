import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/socials/youtube/youtube_url.dart';

class YoutubeVideo extends YoutubeUrl {
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:(?:www\\.)?youtube\\.com\\/(?:watch\\?v=|embed\\/)|youtu\\.be\\/)(?<id>[A-z0-9\\-\\_]+)');

  final String id;

  const YoutubeVideo({
    required String url,
    required this.id,
  }) : super(url: url);

  factory YoutubeVideo.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return YoutubeVideo(
      url: url,
      id: regExpMatch.namedGroup('id') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => id;

  @override
  List<Object> get props => <Object>[id];
}
