import 'package:url_recognizer/src/socials/github/github_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class GithubRepo extends GithubUrl {
  /// Exclude subdomains as these redirect to github pages sometimes.
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:www\\.)?github\\.com\\/(?<login>[A-z0-9_-]+)\\/(?<repo>[A-z0-9_-]+)\\/?');

  final String login;
  final String repo;

  const GithubRepo({
    required String url,
    required this.login,
    required this.repo,
  }) : super(url: url);

  factory GithubRepo.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return GithubRepo(
      url: url,
      login: regExpMatch.namedGroup('login') as String,
      repo: regExpMatch.namedGroup('repo') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => '$login/$repo';

  @override
  List<Object> get props => <Object>[login, repo];
}
