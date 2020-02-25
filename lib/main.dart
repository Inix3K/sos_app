import 'package:flutter/material.dart';
import 'package:sos_app/authentication.dart';
import 'package:sos_app/root_page.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) =>
        new ThemeData(
          primarySwatch: Colors.blue,
          brightness: brightness,
        ),
        themedWidgetBuilder: (context, theme) {
          return new MaterialApp(
        title: 'SOS Application',
        debugShowCheckedModeBanner: false,
              theme: theme,
              home: new RootPage(auth: new Auth())
          );
        });
  }
}