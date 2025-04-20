import 'package:flutter/material.dart';

class Dineer_NV_Screen extends StatefulWidget {
  const Dineer_NV_Screen({super.key});

  @override
  State<Dineer_NV_Screen> createState() => _Dineer_NV_ScreenState();
}

class _Dineer_NV_ScreenState extends State<Dineer_NV_Screen> {
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
          Text('1. Baked Fish Tray :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Season sea bass or sea bream with spices and lemon juice.'),
          SizedBox(height: 10,),
          Text('_Layer sliced onions, tomatoes, and lemon in a baking tray.'),
          SizedBox(height: 10,),
          Text('_Place the fish on top with garlic and butter.'),
          SizedBox(height: 10,),
          Text('_Bake until cooked and serve with vermicelli rice.'),

          SizedBox(height: 25,),
          Text('The second recipe :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25),),
          SizedBox(height: 25,),
          Text('2. Palestinian Chicken Musakhan :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Cook chicken seasoned with sumac and spices.'),
          SizedBox(height: 10,),
          Text('_Caramelize onions with olive oil and sumac.'),
          SizedBox(height: 10,),
          Text('_Place chicken over taboon bread with onions.'),
          SizedBox(height: 10,),
          Text('_Garnish with toasted pine nuts and parsley.'),

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
