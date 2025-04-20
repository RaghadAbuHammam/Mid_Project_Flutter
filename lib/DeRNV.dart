import 'package:flutter/material.dart';

class Dessert_NV_screen extends StatefulWidget {
  const Dessert_NV_screen({super.key});

  @override
  State<Dessert_NV_screen> createState() => _Dessert_NV_screenState();
}

class _Dessert_NV_screenState extends State<Dessert_NV_screen> {
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
          Text('1. Cheese and Cream Kunafa :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Arrange shredded kunafa dough in a tray .'),
          SizedBox(height: 10,),
          Text('_Add a layer of sweet cheese and cream.'),
          SizedBox(height: 10,),
          Text('_Bake until golden.'),
          SizedBox(height: 10,),
          Text('_Drizzle with sugar syrup and let cool slightly before serving.'),

          SizedBox(height: 25,),
          Text('The second recipe :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25),),
          SizedBox(height: 25,),
          Text('2. Umm Ali with Nuts :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Cut baked puff pastry into a deep dish.'),
          SizedBox(height: 10,),
          Text('_Add mixed nuts and coconut.'),
          SizedBox(height: 10,),
          Text('_Pour sweetened milk flavored with vanilla.'),
          SizedBox(height: 10,),
          Text('_Bake until the top browns and serve warm.'),

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
