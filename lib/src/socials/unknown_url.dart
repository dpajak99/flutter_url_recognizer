import 'package:flutter/src/widgets/icon_data.dart';
import 'package:url_recognizer/src/socials/social_url.dart';
import 'package:url_recognizer/src/utils/social_icons_font.dart';

class UnknownUrl extends SocialUrl {
  final String url;

  UnknownUrl({
    required this.url,
  }) : super(url: url);

  @override
  IconData get icon => SocialIconsFont.website;

  @override
  String get title => url;

  @override
  List<Object?> get props => <Object>[url];
}
