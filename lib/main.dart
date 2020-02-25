import 'package:flutter/material.dart';
import 'package:sos_app/authentication.dart';
import 'package:sos_app/root_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'SOS Application',
        debugShowCheckedModeBanner: false,
        // TODO Allow dynamic theme changes (Light/Dark/System)
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new RootPage(auth: new Auth()));
  }
}