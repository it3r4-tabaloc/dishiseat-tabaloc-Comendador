import 'package:flutter/material.dart';
import 'package:dishiseat/login.dart';
import 'package:dishiseat/register.dart';


class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 2,
        child: new Scaffold(
          body: TabBarView(
            children: [
              Login(),
              Register()
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                text: "LOGIN",
              ),
              Tab(
                text: "REGISTER",
              ),
            ],
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.orange,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
