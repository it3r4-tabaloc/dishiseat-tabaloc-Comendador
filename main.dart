import 'package:dishiseat/splashscreenPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
          MaterialApp(
            title: "CRUD SQLITE",
            home: SplashscreenPage(),
            routes: {
              '/home': (context) => SplashscreenPage(),
            },
    );
  }
}
