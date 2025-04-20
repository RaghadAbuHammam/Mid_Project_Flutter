import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'ChooseScreen.dart';

class Register_Screen extends StatefulWidget {
  const Register_Screen({super.key});

  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  final K = GlobalKey<FormState>();
  TextEditingController c1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: SafeArea(
        child: Form(
          key: K,
            child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: 200,
                  child: Lottie.network('https://lottie.host/58613afb-f768-41a6-a0ec-984dae1fdff0/UOJV49fHVl.json')),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15),
                child: Text('Join us now to be one of the best chefs in the world........',
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
                  validator: (v) {
                    if(v!.isEmpty){
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
                    hintText: 'EX:Raghad',
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
                }, child: Text('Register',style: TextStyle(
                  fontWeight: FontWeight.bold,
                    color: Colors.pink.shade200
                  ),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45,top: 30),
                child: Row(
                  children: [
                    Text('Already have an account ? ',style: TextStyle(
                        fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    ),
                    InkWell(onTap: () {
                      Navigator.of(context).pushNamed('routelogin');
                    },child: Text('Sign In Now',style: TextStyle(
                    color: Colors.pink.shade200,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                    ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
        ),
      ),
    );
  }
}
