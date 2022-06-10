import 'package:url_recognizer/src/socials/medium/medium_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class MediumSubdomainPost extends MediumUrl {
  /// Can't match these with the regular post regex as
  /// redefinitions of subgroups are not allowed in pythons regex.
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?<publication>(?!www)[a-z-]+)\\.medium\\.com\\/(?<slug>[a-z0-9\\-]+)-(?<post_id>[A-z0-9]+)(?:\\?.*)?');

  final String postId;
  final String publication;
  final String slug;

  const MediumSubdomainPost({
    required String url,
    required this.postId,
    required this.publication,
    required this.slug,
  }) : super(url: url);

  factory MediumSubdomainPost.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return MediumSubdomainPost(
      url: url,
      publication: regExpMatch.namedGroup('publication') as String,
      slug: regExpMatch.namedGroup('slug') as String,
      postId: regExpMatch.namedGroup('post_id') as String,
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => slug;

  @override
  List<Object> get props => <Object>[postId, publication, slug];
}
