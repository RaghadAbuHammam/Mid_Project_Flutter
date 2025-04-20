import 'package:flutter/material.dart';

class Snack_v_Screen extends StatefulWidget {
  const Snack_v_Screen({super.key});

  @override
  State<Snack_v_Screen> createState() => _Snack_v_ScreenState();
}

class _Snack_v_ScreenState extends State<Snack_v_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 50,),
          Text('The first recipe :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 25),),
          SizedBox(height: 25,),
          Text('1. Hummus with Tahini :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Mash cooked chickpeas with tahini .'),
          SizedBox(height: 10,),
          Text('_Add garlic, lemon juice, and olive oil.'),
          SizedBox(height: 10,),
          Text('_Season with cumin and paprika.'),
          SizedBox(height: 10,),
          Text('_Serve with cut vegetables and Arabic bread.'),

          SizedBox(height: 50,),
          Text('The second recipe :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 25),),
          SizedBox(height: 25,),
          Text('2. Herb-Flavored Mixed Nuts :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Mix a variety of nuts (almonds, walnuts, cashews).'),
          SizedBox(height: 10,),
          Text('_Season with olive oil, za\'atar, and salt.'),
          SizedBox(height: 10,),
          Text('_Roast in the oven for 10 minutes.'),
          SizedBox(height: 10,),
          Text('_Serve cold as a nutritious snack.'),

          Row(
            children: [
              Icon(Icons.arrow_back,color: Colors.green.shade100,),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed('routevegetarian');
              }, child: Text('Go Back',style: TextStyle(
                  color: Colors.green.shade50,
                  fontWeight: FontWeight.bold
              ),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade300
                ),
              )
            ],
          )
        ],
      )
      ),
    );
  }
}
