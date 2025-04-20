import 'package:flutter/material.dart';

class Breakfast_V_Screen extends StatefulWidget {
  const Breakfast_V_Screen({super.key});

  @override
  State<Breakfast_V_Screen> createState() => _Breakfast_V_ScreenState();
}

class _Breakfast_V_ScreenState extends State<Breakfast_V_Screen> {
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
            fontSize: 25),
          ),
          SizedBox(height: 25,),
          Text('1. Foul Medames with Tahini :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Cook fava beans until tender .'),
          SizedBox(height: 10,),
          Text('_Add crushed garlic, lemon juice, and tahini.'),
          SizedBox(height: 10,),
          Text('_Garnish with olive oil, parsley, and cumin.'),
          SizedBox(height: 10,),
          Text('_Serve with Arabic bread and fresh vegetables.'),

          SizedBox(height: 50,),
          Text('The second recipe :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 25),),
          SizedBox(height: 25,),
          Text('2. Avocado and Tomato Toast :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Mash ripe avocado with a little salt and lemon juice.'),
          SizedBox(height: 10,),
          Text('_Spread on toasted bread.'),
          SizedBox(height: 10,),
          Text('_Top with fresh tomato slices.'),
          SizedBox(height: 10,),
          Text('_Garnish with basil or arugula and black pepper.'),

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