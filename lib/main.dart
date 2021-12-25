import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/sc_instagram_welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'rebit_admin',
      theme: ThemeData(fontFamily: 'Vazir', primaryColor: const Color(0xff61637C)),
      routes: {
        "/": (context) => const Directionality(
            textDirection: TextDirection.rtl, child: InstagramWelcomeScreen())
      },
    );
  }
}
