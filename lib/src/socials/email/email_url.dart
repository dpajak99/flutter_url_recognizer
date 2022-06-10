import 'package:flutter/widgets.dart';
import 'package:url_recognizer/src/utils/social_icons_font.dart';
import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/utils/social_icons_font.dart';

abstract class EmailUrl extends SocialUrl {
  @override
  IconData get icon => SocialIconsFont.mail;

  const EmailUrl({required String url}) : super(url: url);
}