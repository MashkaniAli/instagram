import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InstagramAppScreen extends StatefulWidget {
  const InstagramAppScreen({Key? key}) : super(key: key);

  @override
  _InstagramAppScreenState createState() => _InstagramAppScreenState();
}

class _InstagramAppScreenState extends State<InstagramAppScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl:
              'https://play.google.com/store/apps/details?id=com.instagram.android&hl=fa&gl=US',
        ),
      ),
    );
  }
}
