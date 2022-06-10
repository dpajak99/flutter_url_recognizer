import 'package:url_recognizer/src/socials/linkedin/linkedin_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class LinkedinProfile extends LinkedinUrl {
  /// These are the currently used, most-common urls ending in /in/<permalink>
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:[\\w]+\\.)?linkedin\\.com\\/in\\/(?<permalink>[\\w\\-\\_\u00c0-\u00ff%]+)\\/?');

  final String permalink;

  const LinkedinProfile({
    required String url,
    required this.permalink,
  }) : super(url: url);

  factory LinkedinProfile.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return LinkedinProfile(
      url: url,
      permalink: regExpMatch.namedGroup('permalink') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => permalink;

  @override
  List<Object> get props => <Object>[permalink];
}
