import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InstagramSignUpScreen extends StatefulWidget {
  const InstagramSignUpScreen({Key? key}) : super(key: key);

  @override
  _InstagramSignUpScreenState createState() => _InstagramSignUpScreenState();
}

class _InstagramSignUpScreenState extends State<InstagramSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://www.instagram.com/accounts/emailsignup',
      ),
    ));
  }
}
