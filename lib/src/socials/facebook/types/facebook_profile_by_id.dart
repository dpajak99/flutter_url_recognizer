import 'package:url_recognizer/src/socials/facebook/facebook_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class FacebookProfileById extends FacebookUrl {
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:www\\.)facebook.com/(?:profile.php\\?id=)?(?<id>[0-9]+)');

  final String id;

  const FacebookProfileById({
    required String url,
    required this.id,
  }) : super(url: url);

  factory FacebookProfileById.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return FacebookProfileById(
      url: url,
      id: regExpMatch.namedGroup('id') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => id;

  @override
  List<Object> get props => <Object>[id];
}
