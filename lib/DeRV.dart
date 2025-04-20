import 'package:flutter/material.dart';

class Dessert_v_Screen extends StatefulWidget {
  const Dessert_v_Screen({super.key});

  @override
  State<Dessert_v_Screen> createState() => _Dessert_v_ScreenState();
}

class _Dessert_v_ScreenState extends State<Dessert_v_Screen> {
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
          Text('1. Semolina Basbousa :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Mix semolina with sugar, coconut, and vegetable oil .'),
          SizedBox(height: 10,),
          Text('_Pour the mixture into a tray and bake until golden.'),
          SizedBox(height: 10,),
          Text('_Soak with sugar syrup flavored with orange blossom water.'),
          SizedBox(height: 10,),
          Text('_Serve with chopped nuts.'),

          SizedBox(height: 50,),
          Text('The second recipe :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 25),),
          SizedBox(height: 25,),
          Text('2. Almond Milk Pudding :',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade100,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('_Cook almond milk with cornstarch and sugar.'),
          SizedBox(height: 10,),
          Text('_Add orange blossom water or vanilla.'),
          SizedBox(height: 10,),
          Text('_Cool in serving cups.'),
          SizedBox(height: 10,),
          Text('_Garnish with ground pistachios and rose jam.'),

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
