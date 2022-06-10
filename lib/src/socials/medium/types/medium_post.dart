import 'package:url_recognizer/src/socials/medium/medium_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class MediumPost extends MediumUrl {
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/medium\\.com\\/(?:(?:@(?<username>[A-z0-9]+))|(?<publication>[a-z-]+))\\/(?<slug>[a-z0-9\\-]+)-(?<post_id>[A-z0-9]+)(?:\\?.*)?');

  final String postId;
  final String? publication;
  final String? username;
  final String slug;

  const MediumPost({
    required String url,
    required this.postId,
    required this.slug,
    this.publication,
    this.username,
  }) : super(url: url);

  factory MediumPost.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return MediumPost(
      url: url,
      username: regExpMatch.namedGroup('username'),
      publication: regExpMatch.namedGroup('publication'),
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
  List<Object?> get props => <Object?>[postId, publication, username, slug];
}
