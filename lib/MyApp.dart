import 'package:flutter/material.dart';
import 'package:midproject/LRNV.dart';
import 'package:midproject/ChooseScreen.dart';
import 'package:midproject/HomeScreen.dart';
import 'package:midproject/LoginScreen.dart';
import 'package:midproject/VegetarianScreen.dart';
import 'BRNV.dart';
import 'BRV.dart';
import 'DRNV.dart';
import 'DRV.dart';
import 'DeRNV.dart';
import 'DeRV.dart';
import 'LRV.dart';
import 'SRNV.dart';
import 'SRV.dart';
import 'NonVegetarianScreen.dart';
import 'RegisterScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Home(),
        routes: {
          'routeregister':(context)=>Register_Screen(),
          'routelogin':(context)=>Login_Screen(),
          'routechoose':(context)=>Choose_Screen(),
          'routevegetarian':(context)=>Vegetarian_Screen(),
          'routenonvegetarian':(context)=>NonVegetarian_Screen(),
          'routbreakfastv':(context)=>Breakfast_V_Screen(),
          'routlunchv':(context)=>Lunch_V_Screen(),
          'routdinnerv':(context)=>Dinner_v_Screen(),
          'routdessertv':(context)=>Dessert_v_Screen(),
          'routsnackv':(context)=>Snack_v_Screen(),
          'routbreakfastnv':(context)=>Breakfast_NV_Screen(),
          'routlunchnv':(context)=>Lunch_NV_Screen(),
          'routdinnernv':(context)=>Dineer_NV_Screen(),
          'routdessertnv':(context)=>Dessert_NV_screen(),
          'routsnacknv':(context)=>Snack_NV_Screen(),
        },
        debugShowCheckedModeBanner:false
    );
  }
}
