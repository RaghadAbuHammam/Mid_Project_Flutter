import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NonVegetarian_Screen extends StatefulWidget {
  const NonVegetarian_Screen({super.key});

  @override
  State<NonVegetarian_Screen> createState() => _NonVegetarian_ScreenState();
}

class _NonVegetarian_ScreenState extends State<NonVegetarian_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.brown,
      body: SafeArea(child: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_twp3pXoh57eZA7w3xLUpu-Z6mpWofXC1yg&s')),
            ),
            SizedBox(
              height: 25,
            ),
            Text('Enjoy preparing what you want?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            TextButton.icon(onPressed: () {
              Navigator.of(context).pushNamed('routbreakfastnv');
            }, label: Text('BreakFast',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ,icon:Icon(Icons.breakfast_dining_outlined,color: Colors.white,)),
            TextButton.icon(onPressed: () {
              Navigator.of(context).pushNamed('routlunchnv');
            }, label: Text('Lunch',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                icon:Icon(Icons.lunch_dining,color: Colors.white,)),
            TextButton.icon(onPressed: () {
              Navigator.of(context).pushNamed('routdinnernv');
            }, label: Text('Dinner',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ,icon:Icon(Icons.dinner_dining,color: Colors.white,)),
            TextButton.icon(onPressed: () {
              Navigator.of(context).pushNamed('routdessertnv');
            }, label: Text('Desserts',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ,icon:Icon(Icons.cookie_outlined,color: Colors.white,)),
            TextButton.icon(onPressed: () {
              Navigator.of(context).pushNamed('routsnacknv');
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
                        backgroundColor: Colors.brown.shade300
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
