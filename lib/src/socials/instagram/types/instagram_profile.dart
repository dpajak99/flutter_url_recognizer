import 'package:url_recognizer/src/socials/instagram/instagram_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class InstagramProfile extends InstagramUrl {
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:www\\.)?(?:instagram\\.com|instagr\\.am)\\/(?<username>[A-Za-z0-9_](?:(?:[A-Za-z0-9_]|(?:\\.(?!\\.))){0,28}(?:[A-Za-z0-9_]))?)');

  final String username;

  const InstagramProfile({
    required String url,
    required this.username,
  }) : super(url:  url);

  factory InstagramProfile.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return InstagramProfile(
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
