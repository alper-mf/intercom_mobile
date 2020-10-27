import 'package:flutter/material.dart';
import 'package:project_message_demo/src/page/auth/login_page.dart';
import 'package:project_message_demo/src/page/auth/signup_page.dart';

class AuthenticatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AuthenticatePageState();
}

class _AuthenticatePageState extends State<AuthenticatePage> {
  bool showSignIn = true;
  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showSignIn == true
        ? LoginPage(
            toggleView: toggleView,
          )
        : SignupPage(
            toggleView: toggleView,
          );
  }
}