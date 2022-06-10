import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/socials/telegram/telegram_url.dart';

class TelegramProfile extends TelegramUrl {
  /// Matches for t.me, telegram.me and telegram.org.
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:t(?:elegram)?\\.me|telegram\\.org)\\/(?<username>[a-z0-9\\_]{5,32})\\/?');

  final String username;

  const TelegramProfile({
    required String url,
    required this.username,
  }) : super(url: url);

  factory TelegramProfile.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return TelegramProfile(
      url: url,
      username: regExpMatch.namedGroup('username')!,
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
