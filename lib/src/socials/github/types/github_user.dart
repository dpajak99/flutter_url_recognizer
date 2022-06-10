import 'package:url_recognizer/src/socials/github/github_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class GithubUser extends GithubUrl {
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:www\\.)?github\\.com\\/(?<login>[A-z0-9_-]+)\\/?');

  final String login;

  const GithubUser({
    required String url,
    required this.login,
  }) : super(url: url);

  factory GithubUser.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return GithubUser(
      url: url,
      login: regExpMatch.namedGroup('login') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => login;

  @override
  List<Object> get props => <Object>[login];
}
