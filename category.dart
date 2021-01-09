
import 'package:flutter/material.dart';
import 'package:dishiseat/ingredientsPage.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Second Page"),
      ),  
      body: Center(
        child: new Container(
              child: new ListView(
                shrinkWrap: true,
                children: <Widget>[
                    createListTile("Caesar salad",context),
                    createListTile("Caesar salad",context),
                    createListTile("Caesar salad",context),
                    createListTile("Caesar salad",context),
                    createListTile("Caesar salad",context),
                    createListTile("Caesar salad",context),
                    createListTile("Caesar salad",context),
                    createListTile("Caesar salad",context),
                    createListTile("Caesar salad",context),
                ]
              ), 
            ),

          ),
    );
  }

  Widget createListTile(String text, BuildContext context) {
      return new Card(
        margin: EdgeInsets.only(left: 10, right: 10,bottom: 5, top: 5),
        child: new RaisedButton(
          color: Colors.white,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => IngredientsPage()));
          },
          // child: Padding(
            // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
             child: ListTile(
              leading: new SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("assets/caesar.jpg"),
              ) ,
              title: Text(text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Salad \n 20 mins"),
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 15),
                
          
        // )
          )
        )
      );
  }
}
