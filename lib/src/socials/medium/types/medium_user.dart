import 'package:url_recognizer/src/socials/medium/medium_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class MediumUser extends MediumUrl {
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/medium\\.com\\/@(?<username>[A-z0-9]+)(?:\\?.*)?');

  final String username;

  const MediumUser({
    required String url,
    required this.username,
  }) : super(url: url);

  factory MediumUser.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return MediumUser(
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
