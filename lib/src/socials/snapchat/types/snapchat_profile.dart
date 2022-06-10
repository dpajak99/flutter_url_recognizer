import 'package:url_recognizer/src/socials/snapchat/snapchat_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class SnapchatProfile extends SnapchatUrl {
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:www\\.)?snapchat\\.com\\/add\\/(?<username>[A-z0-9\\.\\_\\-]+)\\/?');

  final String username;

  const SnapchatProfile({
    required String url,
    required this.username,
  }) : super(url: url);

  factory SnapchatProfile.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return SnapchatProfile(
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
