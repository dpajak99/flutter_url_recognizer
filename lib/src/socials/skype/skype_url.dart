import 'package:flutter/material.dart';
import 'package:url_recognizer/src/utils/social_icons_font.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

abstract class SkypeUrl extends SocialUrl {
  @override
  IconData get icon => SocialIconsFont.skype;

  const SkypeUrl({required String url}) : super(url: url);
}