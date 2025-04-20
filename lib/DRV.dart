import 'package:flutter/material.dart';

import 'ChooseScreen.dart';

class Dinner_v_Screen extends StatefulWidget {
  const Dinner_v_Screen({super.key});

  @override
  State<Dinner_v_Screen> createState() => _Dinner_v_ScreenState();
}

class _Dinner_v_ScreenState extends State<Dinner_v_Screen> {
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
          Text('1. Vegetable Maqluba :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Layer fried eggplant, cauliflower, and carrots in a pot .'),
          SizedBox(height: 10,),
          Text('_Add rice seasoned with spices.'),
          SizedBox(height: 10,),
          Text('_Flip the maqluba when serving.'),
          SizedBox(height: 10,),
          Text('_Garnish with toasted almonds and parsley.'),

          SizedBox(height: 50,),
          Text('The second recipe :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 25),),
          SizedBox(height: 25,),
          Text('2. Hummus Fatteh :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Place toasted bread pieces in a dish.'),
          SizedBox(height: 10,),
          Text('_Add as layer of cooked chickpeas.'),
          SizedBox(height: 10,),
          Text('_Pour tahini sauce with lemon and garlic.'),
          SizedBox(height: 10,),
          Text('_Garnish with toasted pine nuts and parsley.'),

          Row(
            children: [
              Icon(Icons.arrow_back,color: Colors.green.shade100,),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pop();
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
