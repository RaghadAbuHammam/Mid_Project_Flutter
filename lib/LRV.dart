import 'package:flutter/material.dart';

class Lunch_V_Screen extends StatefulWidget {
  const Lunch_V_Screen({super.key});

  @override
  State<Lunch_V_Screen> createState() => _Lunch_V_ScreenState();
}

class _Lunch_V_ScreenState extends State<Lunch_V_Screen> {
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
            Text('1. Lentil Mujadara :',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green.shade100,
                fontSize: 20),),
            SizedBox(height: 10,),
            Text('_Cook green or brown lentils until tender.'),
            SizedBox(height: 10,),
            Text('_Add cooked rice and caramelized onions.'),
            SizedBox(height: 10,),
            Text('_Season with cumin and Arabic spices.'),
            SizedBox(height: 10,),
            Text('_Serve with a green salad and plant-based yogurt.'),

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
            Text('_Mix cooked pasta, rice, and lentils.'),
            SizedBox(height: 10,),
            Text('_Add spiced tomato sauce.'),
            SizedBox(height: 10,),
            Text('_Top with crispy fried onions.'),
            SizedBox(height: 10,),
            Text('_Serve with dakka (garlic and vinegar sauce).'),

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
