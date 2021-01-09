
import 'package:dishiseat/tabs.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';



void main() => runApp(SplashscreenPage());

class SplashscreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Dish Is Eat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
   @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Tabs(),
      title: new Text('DishIsEat',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Maheisa',
        fontSize: 60.0,
        fontStyle: FontStyle.italic,
        color: Colors.orange
      ),),
      image: new Image.asset('assets/logo.png'),
      backgroundColor: Colors.white,
      photoSize: 100.0,
      onClick: ()=>print("DishIsEat"),
    );
  }
} //end of first page class