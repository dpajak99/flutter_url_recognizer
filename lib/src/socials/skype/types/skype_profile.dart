import 'package:url_recognizer/src/socials/skype/skype_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class SkypeProfile extends SkypeUrl {
  /// Matches Skype's URLs to add contact, call, chat.
  /// More info at [Skype SDK's docs](https://docs.microsoft.com/en-us/skype-sdk/skypeuris/skypeuris)
  static RegExp regExp = RegExp(
      '(?:(?:callto|skype):)(?<username>[a-z][a-z0-9\\.,\\-_]{5,31})(?:\\?(?:add|call|chat|sendfile|userinfo))?');

  final String username;

  const SkypeProfile({
    required String url,
    required this.username,
  }) : super(url: url);

  factory SkypeProfile.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return SkypeProfile(
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
