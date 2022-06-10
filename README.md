# url_recognizer

Flutter implementation of [lorey/social-media-profiles-regexs](https://github.com/lorey/social-media-profiles-regexs)

This package lists regular expressions to match and extract information from URLs of social media profiles. So if you find a hyperlink to this repo somewhere on the web, i.e. https://github.com/lorey/social-media-profiles-regexs/, the regular expressions in this repo allow you find out it's a Github link pointing to a repo as well as extract the username lorey and the repo name social-media-profiles-regexs from this URL.


## Usage

To use this plugin, add `url_recognizer` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).
```yaml
dependencies:
  ...
  url_recognizer: ^1.0.0
```

### Example

```dart
class _MyAppState extends State<MyApp> {
  final List<SocialUrl> _recognizedSocials = List<SocialUrl>.empty(growable: true);

  @override
  void initState() {
    for (String socialLink in kUrlSamples) {
      SocialUrl? socialUrl = UrlRecognizer.findObject(url: socialLink);
      if (socialUrl != null) {
        _recognizedSocials.add(socialUrl);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _recognizedSocials.map((SocialUrl e) => _SocialLinkPreview(socialUrl: e)).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
```

### Issues
Please file any issues, bugs or feature request as an issue on our GitHub page.

### Want to contribute
If you would like to contribute to the plugin (e.g. by improving the documentation, solving a bug or adding a cool new feature), please send us your pull request.

