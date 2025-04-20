import 'package:flutter/material.dart';

class Lunch_NV_Screen extends StatefulWidget {
  const Lunch_NV_Screen({super.key});

  @override
  State<Lunch_NV_Screen> createState() => _Lunch_NV_ScreenState();
}

class _Lunch_NV_ScreenState extends State<Lunch_NV_Screen> {
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
          Text('1. Saudi Chicken Kabsa :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Brown chicken pieces with onions and garlic .'),
          SizedBox(height: 10,),
          Text('_Add Arabic spices and kabsa seasoning.'),
          SizedBox(height: 10,),
          Text('_Cook rice in the seasoned chicken broth.'),
          SizedBox(height: 10,),
          Text('_Serve chicken over rice topped with toasted nuts and raisins.'),

          SizedBox(height: 25,),
          Text('The second recipe :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25),),
          SizedBox(height: 25,),
          Text('2. Grilled Kofta with Tahini :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Mix ground meat with onions, parsley, and spices.'),
          SizedBox(height: 10,),
          Text('_Shape the mixture onto skewers and grill.'),
          SizedBox(height: 10,),
          Text('_Prepare tahini sauce with garlic and lemon.'),
          SizedBox(height: 10,),
          Text('_Serve with french fries and grilled vegetables.'),

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
