import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'ChooseScreen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final K = GlobalKey<FormState>();
  TextEditingController c1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: SafeArea(
        child: Form(child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                  width: 250,
                  child: Lottie.network('https://lottie.host/0498fd41-11e5-4680-884f-857276883652/K7tSiWlDP0.json')),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 20),
                child: Text('Welcome Chef, log in and choose your recipe.........',
                  style: TextStyle(
                      color: Colors.pink.shade200,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  controller: c1,
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'Please write your name';
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.abc,color: Colors.pink.shade200
                    ),
                    label: Text('Your Name :',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pink.shade200
                    ),
                    ),
                    hintText: 'Ex:Raghad',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),
                    filled: true,
                    fillColor: Colors.orange.shade100,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.pink.shade200,
                          width: 2,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.pink.shade200,
                            width: 3
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: TextFormField(
                  validator: (value) {
                    if(value!.length<8){
                      return 'The password must be more than 8 characters long.';
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password,color: Colors.pink.shade200
                    ),
                    label: Text('Your Password :',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pink.shade200
                    ),
                    ),
                    hintText: 'example123@@',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),
                    filled: true,
                    fillColor: Colors.orange.shade100,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.pink.shade200,
                          width: 2,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.pink.shade200,
                            width: 3
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    if(K.currentState!.validate()){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> Choose_Screen(name: c1.text))
                      );
                    }
                  }, child: Text('LogIn',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade200
                ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade100,
                  ),
                ),
              ),

              Row(
                children: [
                  Icon(Icons.arrow_back,color: Colors.pink.shade200,),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: ElevatedButton(onPressed: () {
                      Navigator.of(context).pushNamed('routeregister');
                    }, child: Text('Go Back',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pink.shade200
                    ),
                    ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange.shade100
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
        ),
      ),
    );
  }
}
