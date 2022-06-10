import 'package:url_recognizer/src/socials/email/email_url.dart';

class EmailAddress extends EmailUrl {
  /// This matches plain emails and mailto hyperlinks.
  /// This regex is intended for scraping and not as a validation.
  /// See why: [\"Your email validation logic is wrong\"](https://www.netmeister.org/blog/email.html)
  static RegExp regExp = RegExp('(?:mailto:)?(?<email>[A-z0-9_.+-]+@[A-z0-9_.-]+\\.[A-z]+)');

  @override
  final String email;

  const EmailAddress({
    required String url,
    required this.email,
  }) : super(url: url);

  factory EmailAddress.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return EmailAddress(
      url: url,
      email: regExpMatch.namedGroup('email') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => email;

  @override
  List<Object> get props => <Object>[email];
}
