import 'package:url_recognizer/src/socials/linkedin/linkedin_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class LinkedinPost extends LinkedinUrl {
  /// Direct link to a Linkedin post, only contains a post id.
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:[\\w]+\\.)?linkedin\\.com\\/feed\\/update\\/urn:li:activity:(?<activity_id>[0-9]+)\\/?');

  final String activityId;

  const LinkedinPost({
    required String url,
    required this.activityId,
  }) : super(url: url);

  factory LinkedinPost.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return LinkedinPost(
      url: url,
      activityId: regExpMatch.namedGroup('activity_id') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => activityId;

  @override
  List<Object> get props => <Object>[activityId];
}
