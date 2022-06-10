import 'package:flutter/material.dart';
import 'package:url_recognizer/src/utils/social_icons_font.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

abstract class YoutubeUrl extends SocialUrl {
  @override
  IconData get icon => SocialIconsFont.youtube;

  const YoutubeUrl({required String url}) : super(url: url);
}