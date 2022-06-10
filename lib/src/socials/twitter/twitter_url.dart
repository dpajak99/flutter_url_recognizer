import 'package:flutter/material.dart';
import 'package:url_recognizer/src/utils/social_icons_font.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

abstract class TwitterUrl extends SocialUrl {
  @override
  IconData get icon => SocialIconsFont.twitter;

  const TwitterUrl({required String url}) : super(url: url);
}