import 'package:url_recognizer/src/socials/linkedin/linkedin_url.dart';
import 'package:url_recognizer/src/socials/social_url.dart';

class LinkedinCompany extends LinkedinUrl {
  /// This matches companies and schools.
  /// Permalink is an integer id or a slug.
  /// The id permalinks redirect to the slug permalinks as soon as one is set.
  /// Permalinks can contain special characters.
  /// Recently, company links that are actually schools get redirected
  /// to newly introduced /school/ permalinks
  static RegExp regExp = RegExp('(?:https?:)?\\/\\/(?:[\\w]+\\.)?linkedin\\.com\\/(?<company_type>(company)|(school))\\/(?<company_permalink>[A-z0-9-\u00c0-\u00ff\\.]+)\\/?');

  final String permalink;
  final String type;

  const LinkedinCompany({
    required String url,
    required this.permalink,
    required this.type,
  }) : super(url: url);

  factory LinkedinCompany.fromUrl(String url) {
    RegExpMatch regExpMatch = regExp.firstMatch(url)!;
    return LinkedinCompany(
      url: url,
      type: regExpMatch.namedGroup('company_type') as String,
      permalink: regExpMatch.namedGroup('company_permalink') as String
    );
  }

  static bool hasMatch(String text) {
    return regExp.hasMatch(text);
  }

  @override
  String get title => permalink;

  @override
  List<Object> get props => <Object>[type, permalink];
}
