
import 'package:flutter/material.dart';


class IngredientsPage extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
   body: setPage(context)
    );
  }

  Widget setPage(BuildContext context) {
    return Stack(children: <Widget>[
    // Background with gradient
      Container(
          decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/caesar.jpg"),
            fit: BoxFit.cover,
          ),
          ),
          height: MediaQuery.of(context).size.height * 0.35
        ),
    //Above card
      Card(
          elevation: 20.0,
          margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 130.0),
          child: ListView(
              padding:
              EdgeInsets.only(top: 20.0, left: 20.0, right: 18.0, bottom: 5.0),
              children: <Widget>[
                Text("Caesar Salad",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(" Salad",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35.0),
                ),
                Text("INGREDIENTS: ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                _ingredientDesc("1 large or 2 small heads of romaine lettuce"),
                _ingredientDesc("Parmesan cheese, shredded or shaved"),
                _ingredientDesc("Crisp croutons"),
                _ingredientDesc("Caesar salad dressing"),
                Padding(
                  padding: EdgeInsets.only(top: 35.0),
                ),
                Text("DIRECTIONS: ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                _ingredientDesc("The crunchy homemade garlic croutons really elevate this salad, making it look and taste quite fancy. The cheese crusted onto each little toast will have you snacking on these croutons!"),
                _ingredientDesc("Cut baguette in half lengthwise and slice into 1/4″ thick pieces and place on baking sheet.\n \n" +
                  "Combine 3 Tbsp extra virgin olive oil with minced garlic. toss breads with garlic infused oil and 2 Tbsp parmesan.\n"
                  +"\nSpread Evenly and Bake to desired crispness. \n" + "Whisk together minced garlic, dijon, Worcestershire, lemon juice and red wine vinegar. \n"
                  +"\n Whisking while adding oil emulsifies the dressing for a smooth and creamy (not oily) consistency. \n"+
                  "\nSeason with 1/2 tsp salt and 1/8 tsp black pepper, or to taste. \n" + 
                  "\n In a large mixing bowl, combine all of your ingredients and toss gently to coat the lettuce in caesar dressing. This recipe makes enough croutons for two full salads so you’ll have them ready to go for round 2!"),
                
              ]

        )),
      // Positioned to take only AppBar size 
      Positioned( 
        top: 0.0,
        left: 0.0,
        right: 0.0,
        child: AppBar(        // Add AppBar here only
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text("Caesar Salad", style: TextStyle(fontWeight: FontWeight.bold),),
        ),
      ),

    ]);
  }


  Widget _ingredientDesc(String text) {
    return Padding (
      padding: EdgeInsets.all(5.0),
        child: Text(text,
          style: TextStyle(fontSize: 15),
        )
      );
  }
  
}

