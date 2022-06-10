import 'package:url_recognizer/src/socials/facebook/facebook_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class FacebookProfile extends FacebookUrl {
  /// A profile can be a page, a user profile, or something else.
  /// Since Facebook redirects these URLs to all kinds of objects (user, pages, events, and so on),
  /// you have to verify that it's actually a user.
  /// See https://developers.facebook.com/docs/graph-api/reference/profile
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:www\\.)?(?:facebook|fb)\\.com\\/(?<profile>(?![A-z]+\\.php)(?!marketplace|gaming|watch|me|messages|help|search|groups)[A-z0-9_\\-\\.]+)\\/?');

  final String profile;

  const FacebookProfile({
    required String url,
    required this.profile,
  }) : super(url:  url);

  factory FacebookProfile.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return FacebookProfile(
      url: url,
      profile: regExpMatch.namedGroup('profile') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => profile;

  @override
  List<Object> get props => <Object>[profile];
}
