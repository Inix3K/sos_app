import 'package:flutter/material.dart';
import 'login_signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOS Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginSignupPage(),
    );
  }
}