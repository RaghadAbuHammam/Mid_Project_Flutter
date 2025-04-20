import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Vegetarian_Screen extends StatefulWidget {
  const Vegetarian_Screen({super.key});

  @override
  State<Vegetarian_Screen> createState() => _Vegetarian_ScreenState();
}

class _Vegetarian_ScreenState extends State<Vegetarian_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(child: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                width: 180,
                child: Lottie.network('https://lottie.host/1e28d85c-f6bf-4ba4-a407-8b4296690518/Z2wlqGjQlw.json')),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: Text('"When you choose plant-based food, you are choosing health, the environment, animals, and the future."',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 15
              ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('What recipe do you want?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            TextButton.icon(onPressed: () {
              Navigator.of(context).pushNamed('routbreakfastv');
            }, label: Text('BreakFast',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ,icon:Icon(Icons.breakfast_dining_outlined,color: Colors.white,)),
            TextButton.icon(onPressed: () {
              Navigator.of(context).pushNamed('routlunchv');
            }, label: Text('Lunch',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                icon:Icon(Icons.lunch_dining,color: Colors.white,)),
            TextButton.icon(onPressed: () {
              Navigator.of(context).pushNamed('routdinnerv');
            }, label: Text('Dinner',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ,icon:Icon(Icons.dinner_dining,color: Colors.white,)),
            TextButton.icon(onPressed: () {
              Navigator.of(context).pushNamed('routdessertv');
            }, label: Text('Desserts',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ,icon:Icon(Icons.cookie_outlined,color: Colors.white,)),
            TextButton.icon(onPressed: () {
              Navigator.of(context).pushNamed('routsnackv');
            }, label: Text('Snacks',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ,icon:Icon(Icons.bakery_dining_rounded,color: Colors.white,),),
            
            Row(
              children: [
                Icon(Icons.arrow_back,color: Colors.white,),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed('routechoose');
                  }, child: Text('Go Back',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      )
      ),
    );
  }
}
