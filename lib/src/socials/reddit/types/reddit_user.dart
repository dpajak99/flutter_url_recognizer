import 'package:url_recognizer/src/socials/reddit/reddit_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class RedditUser extends RedditUrl {
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:[a-z]+\\.)?reddit\\.com\\/(?:u(?:ser)?)\\/(?<username>[A-z0-9\\-\\_]*)\\/?');

  final String username;

  const RedditUser({
    required String url,
    required this.username,
  }) : super(url: url);

  factory RedditUser.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return RedditUser(
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
