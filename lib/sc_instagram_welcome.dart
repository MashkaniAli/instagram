import 'package:flutter/material.dart';
import 'package:instagram/sc_instagram_app.dart';
import 'package:instagram/sc_sign_in.dart';
import 'package:instagram/sc_sign_up.dart';

class InstagramWelcomeScreen extends StatefulWidget {
  const InstagramWelcomeScreen({Key? key}) : super(key: key);

  @override
  _InstagramWelcomeScreenState createState() => _InstagramWelcomeScreenState();
}

class _InstagramWelcomeScreenState extends State<InstagramWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double deviseWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "English (UK)",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 7),
                child: const Image(
                  image: AssetImage('assets/image/instagram.png'),
                  width: 150,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Sign up to see photos and videos from your friends.",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InstagramAppScreen()));
                  },
                  child: Container(
                    width: deviseWidth / 1.4 - 5,
                    height: deviseWidth * .12,
                    decoration: const BoxDecoration(
                      color: Color(0xff26A9FF),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: Text(
                        'Get the Instagram App',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: deviseWidth * .040,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InstagramSingInScreen()));
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(
                            color: Color(0xff26A9FF),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    const Text(
                      "   Or   ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InstagramSignUpScreen()));
                      },
                      child: const Text(
                        "Sing Up",
                        style: TextStyle(
                            color: Color(0xff26A9FF),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.3 + 20),
                child: const Text(
                  "from",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(),
                child: Image(
                  image: AssetImage('assets/image/Meta-facebook-New-Logo.png'),
                  color: Colors.black54,
                  width: 70,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
