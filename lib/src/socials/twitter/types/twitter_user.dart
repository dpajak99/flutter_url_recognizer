import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/socials/twitter/twitter_url.dart';

class TwitterUser extends TwitterUrl {
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:[A-z]+\\.)?twitter\\.com\\/@?(?!home|share|privacy|tos)(?<username>[A-z0-9_]+)\\/?');

  final String username;

  const TwitterUser({
    required String url,
    required this.username,
  }) : super(url: url);

  factory TwitterUser.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return TwitterUser(
      url: url,
      username: regExpMatch.namedGroup('username')!,
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
