import 'package:url_recognizer/src/socials/linkedin/linkedin_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class LinkedinProfilePub extends LinkedinUrl {
  /// These are old public urls not used anymore.
  /// More info at [quora](https://www.quora.com/What-is-the-difference-between-www-linkedin-com-pub-and-www-linkedin-com-in)
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:[\\w]+\\.)?linkedin\\.com\\/pub\\/(?<permalink_pub>[A-z0-9_-]+)(?:\\/[A-z0-9]+){3}\\/?');

  final String permalinkPub;

  const LinkedinProfilePub({
    required String url,
    required this.permalinkPub,
  }) : super(url: url);

  factory LinkedinProfilePub.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return LinkedinProfilePub(
      url: url,
      permalinkPub: regExpMatch.namedGroup('permalink_pub') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => permalinkPub;

  @override
  List<Object> get props => <Object>[permalinkPub];
}
