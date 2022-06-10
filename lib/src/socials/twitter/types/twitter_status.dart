import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/socials/twitter/twitter_url.dart';

class TwitterStatus extends TwitterUrl {
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:[A-z]+\\.)?twitter\\.com\\/@?(?<username>[A-z0-9_]+)\\/status\\/(?<tweet_id>[0-9]+)\\/?');

  final String tweetId;
  final String username;

  const TwitterStatus({
    required String url,
    required this.tweetId,
    required this.username,
  }) : super(url: url);

  factory TwitterStatus.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return TwitterStatus(
      url: url,
      tweetId: regExpMatch.namedGroup('tweet_id') as String,
      username: regExpMatch.namedGroup('username') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => tweetId;

  @override
  List<Object> get props => <Object>[tweetId, username];
}
