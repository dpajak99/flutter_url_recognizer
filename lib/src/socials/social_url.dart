import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class SocialUrl extends Equatable {
  final String url;
  String get title;
  IconData get icon;

  const SocialUrl({
    required this.url,
  });

  const SocialUrl.fromUrl(this.url);
}
