import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/socials/youtube/youtube_url.dart';

class YoutubeUser extends YoutubeUrl {
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:[A-z]+\\.)?youtube.com\\/user\\/(?<username>[A-z0-9]+)\\/?');

  final String username;

  const YoutubeUser({
    required String url,
    required this.username,
  }) : super(url: url);

  factory YoutubeUser.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return YoutubeUser(
      url: url,
      username: regExpMatch.namedGroup('username') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => username;

  @override
  List<Object> get props => <Object>[username];
}
