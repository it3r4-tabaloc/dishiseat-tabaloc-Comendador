
import 'package:dishiseat/category.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class MainMenu extends StatefulWidget {
  final VoidCallback signOut;

  MainMenu(this.signOut);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  signOut() {
    setState(() {
      widget.signOut();
    });
  }

  int currentIndex = 0;
  String selectedIndex = 'TAB: 0';

  String email = "", name = "", id = "";
  TabController tabController;

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      id = preferences.getString("id");
      email = preferences.getString("email");
      name = preferences.getString("name");
    });
    print("id" + id);
    print("user" + email);
    print("name" + name);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPref();
  }

String apptitle = "";
List<String> list = [];

  Widget createButtons(String text, BuildContext context, String buttonIcon) {
      return new Column(
        children: <Widget>[
            RawMaterialButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
              apptitle = text;
              print(apptitle);
              },
              child: new Image.asset(buttonIcon,
                height: 60,
                width: 60,
              ),
                shape: new CircleBorder(),
                elevation: 2.0,
                fillColor: Colors.orange,
                padding: const EdgeInsets.all(15.0),
            ),
        
            Padding(
                  padding: const EdgeInsets.all(3.0),
                ),
            Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
        ]
      );
    }

    Widget _createHeader() {
      return DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: new BoxDecoration(
            color: Colors.orange
          ),
          child: Stack(children: <Widget>[
            Positioned(
                bottom: 12.0,
                left: 16.0,
                child: Text("Dish Is Eat",
                    style: TextStyle(
                        fontFamily: "Maheisa",
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold))
            ),
            Positioned(
                bottom: 50.0,
                left: 10.0,
                child: new CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/logo.png"),
                )
            ),
          ]));
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Home"),
      ),
      drawer: Drawer(
         child: ListView(
     children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(name),
          accountEmail: Text(email),
          currentAccountPicture: CircleAvatar(
            backgroundColor:Colors.white,
            backgroundImage: AssetImage("assets/logo.png"),
            ),
            decoration: BoxDecoration(
                color: Colors.orange,
            ),
          ),
         ListTile(
          title: Text("My recipes"),
          leading: Icon(Icons.arrow_forward),
         ),
        ListTile(
          title: Text("All Recipes"),
          leading: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Logout"),
          leading: Icon(Icons.exit_to_app),
          onTap: () {
            Navigator.of(context).pop();
            signOut();
          },
        )
        ],
      ),
      ),
      body:  Center(
          child: SingleChildScrollView (
            child: Padding (
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Container (
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        createButtons("Breakfast",context,"assets/icons/breakfast.png"),
                        createButtons("Drinks",context,"assets/icons/drinks.png"),
                    ]      
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        createButtons("Salad",context,"assets/icons/salad.png"),
                        createButtons("Cakes",context,"assets/icons/cake.png"),
                    ]      
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                  ),
                new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        createButtons("Soup",context,"assets/icons/soup.png"),
                    ]      
                  ),
                  
                ],
              ),
              
            ),
            
            )
          )
        )
      );
    }
}
