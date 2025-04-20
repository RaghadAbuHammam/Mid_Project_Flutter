import 'package:flutter/material.dart';

class Choose_Screen extends StatefulWidget {
  String? name;
  Choose_Screen({ this.name});

  @override
  State<Choose_Screen> createState() => _Choose_ScreenState();
}

class _Choose_ScreenState extends State<Choose_Screen> {
  List<String>VON=['' , ''];
  List<String> img = ['https://thumbs.dreamstime.com/b/vegetables-fruits-arranged-circle-green-background-generative-ai-269666131.jpg',
    'https://vid.alarabiya.net/images/2018/08/08/dbba98ba-41d3-48e6-b823-f14e3e23d64c/dbba98ba-41d3-48e6-b823-f14e3e23d64c_16x9_600x338.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: SafeArea(child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Text('Wellcome ${widget.name}',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              ),
              Text('Please select !',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pink.shade200,
                  fontSize: 30
              ),
              ),
              Text('Are you...... ',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pink.shade200,
                  fontSize: 30
              ),
              ),
              Text('Vegetarian OR Non-Vegetarian ? ',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pink.shade200,
                  fontSize: 22
              ),
              ),
              SizedBox(
                height: 25,
              ),

              Expanded(
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 150,left: 40),
                              child: Text(VON[index],style: TextStyle(color: Colors.pink.shade200,fontWeight: FontWeight.bold,backgroundColor: Colors.orange.shade200),
                              ),
                            ),
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(img[index]),fit: BoxFit.fill
                            )
                          ),
                        ),
                      );
                    },
                  itemCount: img.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,bottom: 100),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.of(context).pushNamed('routevegetarian');
                    }, child: Text('Vegetarian',style: TextStyle(
                      color: Colors.pink.shade300,
                        fontWeight: FontWeight.bold
                    ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade200
                      ),
                    ),
                    SizedBox(width: 50,),
                    ElevatedButton(onPressed: () {
                      Navigator.of(context).pushNamed('routenonvegetarian');
                    }, child: Text('Non_Vegetarian',style: TextStyle(
                      color: Colors.pink.shade300,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade200
                      ),
                    )
                  ],
                ),
              ),



            ],
          ),
        ),
      )
      ),
    );
  }
}
