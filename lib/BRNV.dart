import 'package:flutter/material.dart';

class Breakfast_NV_Screen extends StatefulWidget {
  const Breakfast_NV_Screen({super.key});

  @override
  State<Breakfast_NV_Screen> createState() => _Breakfast_NV_ScreenState();
}

class _Breakfast_NV_ScreenState extends State<Breakfast_NV_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 50,),
          Text('The first recipe :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25),),
          SizedBox(height: 25,),
          Text('1. Minced Meat Shakshuka :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Sauté minced meat with onions and garlic .'),
          SizedBox(height: 10,),
          Text('_Add chopped tomatoes, bell peppers, and spices.'),
          SizedBox(height: 10,),
          Text('_Create small wells in the mixture and crack eggs into them.'),
          SizedBox(height: 10,),
          Text('_Cover until eggs are cooked and serve with Arabic bread.'),

          SizedBox(height: 25,),
          Text('The second recipe :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25),),
          SizedBox(height: 25,),
          Text('2. Mixed Lebanese Breakfast :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Prepare manakish with meat and cheese.'),
          SizedBox(height: 10,),
          Text('_Serve with labneh mixed with za\'atar and olive oil.'),
          SizedBox(height: 10,),
          Text('_Add a plate of makdous (pickled eggplant) and olives.'),
          SizedBox(height: 10,),
          Text('_Complete with cheese and parsley omelette.'),

          Row(
            children: [
              Icon(Icons.arrow_back,color: Colors.green.shade100,),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed('routenonvegetarian');
              }, child: Text('Go Back',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown.shade300
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


