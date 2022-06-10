import 'package:flutter/material.dart';
import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/utils/social_icons_font.dart';

abstract class InstagramUrl extends SocialUrl {
  @override
  IconData get icon => SocialIconsFont.instagram;

  const InstagramUrl({required String url}) : super(url: url);
}