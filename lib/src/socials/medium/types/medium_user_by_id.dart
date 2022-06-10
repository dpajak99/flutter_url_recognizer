import 'package:url_recognizer/src/socials/medium/medium_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class MediumUserById extends MediumUrl {
  /// Now redirects to new user profiles. Follow with a head or get request.
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/medium\\.com\\/u\\/(?<user_id>[A-z0-9]+)(?:\\?.*)');

  final String userId;

  const MediumUserById({
    required String url,
    required this.userId,
  }) : super(url: url);

  factory MediumUserById.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return MediumUserById(
      url: url,
      userId: regExpMatch.namedGroup('user_id') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => userId;

  @override
  List<Object> get props => <Object>[userId];
}
