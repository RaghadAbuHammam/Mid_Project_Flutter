import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: SafeArea(child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Lottie.network('https://lottie.host/484a1b54-6d02-4d14-87f8-90d85910089d/Iz3gY2c7vA.json'),
            SizedBox(
              height: 25,
            ),
            Text('Ready for the most delicious recipes ? ',
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
              Navigator.of(context).pushNamed('routeregister');
            }, child: Text('Let\'s Started',
              style:TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold
              )
            ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade200),
            )
          ],
        ),
      )
      ),
    );
  }
}
