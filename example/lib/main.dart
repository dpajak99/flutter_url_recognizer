import 'package:flutter/material.dart';
import 'package:url_recognizer/url_recognizer.dart';
import 'package:url_recognizer_example/url_samples.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

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
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
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

class _SocialLinkPreview extends StatelessWidget {
  final SocialUrl socialUrl;

  const _SocialLinkPreview({
    required this.socialUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            socialUrl.url,
            style: const TextStyle(
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey.shade400,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(socialUrl.icon),
                const SizedBox(width: 8),
                Text(socialUrl.title),
              ],
            ),
          )
        ],
      ),
    );
  }
}
