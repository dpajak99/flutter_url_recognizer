import 'package:url_recognizer/src/socials/phone/phone_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class PhoneNumber extends PhoneUrl {
  /// Should be cleaned afterwards to strip dots, spaces, etc.
  static RegExp regExp = RegExp('(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6})');

  final String number;

  const PhoneNumber({
    required String url,
    required this.number,
  }) : super(url: url);

  factory PhoneNumber.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return PhoneNumber(
      url: url,
      number: url,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => number;

  @override
  List<Object> get props => <Object>[number];
}
