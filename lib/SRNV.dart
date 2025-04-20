import 'package:flutter/material.dart';

class Snack_NV_Screen extends StatefulWidget {
  const Snack_NV_Screen({super.key});

  @override
  State<Snack_NV_Screen> createState() => _Snack_NV_ScreenState();
}

class _Snack_NV_ScreenState extends State<Snack_NV_Screen> {
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
          Text('1. Meat Samboosak :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Mix ground meat with onions and spices .'),
          SizedBox(height: 10,),
          Text('_Fill samboosak dough and seal well.'),
          SizedBox(height: 10,),
          Text('_Fry until golden and crispy.'),
          SizedBox(height: 10,),
          Text('_Serve with tomato sauce or mint yogurt.'),

          SizedBox(height: 25,),
          Text('The second recipe :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25),),
          SizedBox(height: 25,),
          Text('2. Spicy Chicken Wings :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Marinate chicken wings in hot sauce and garlic.'),
          SizedBox(height: 10,),
          Text('_Bake in the oven until cooked and browned.'),
          SizedBox(height: 10,),
          Text('_Serve with ranch dressing or garlic yogurt.'),
          SizedBox(height: 10,),
          Text('_Add fresh vegetable sticks for balance.'),

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
    );;
  }
}
