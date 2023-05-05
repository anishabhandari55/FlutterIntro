import 'package:flutter/material.dart';

// reruning the  program everytime we want to make changes even minor is not applicable as in previous cases/ requires much of time
// for this we have hot restart & for that some method has to be called
// stateless and sateful wiget have the build method, so we use this widget/ makes our program faster for large code

void main() {
  runApp(
    MyApp(), // runapp runs myapp class which returns the material app
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade500,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/anisha.jpg'),
              ),
              SizedBox(
                height: 13.0,
              ),
              Text(
                'anisha bh',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Crimson',
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Aboreto',
                ),
              ),
              SizedBox(
                height: 30.0,
                child: Padding
                (
                  padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 4.0),
                  child: Divider(thickness: 1.0, color: Colors.black,)),
              ),
              
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                height: 47.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 28.0,
                    ),
                    Text('+977 980000000',
                    style: TextStyle(fontFamily: 'Explora',fontWeight: FontWeight.w600, fontSize: 20.0 ),),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                color: Colors.white,
                child: ListTile(
                   leading: Icon(
                      Icons.email,
                      color: Colors.black,
                    ), 
                    title: Text('anishabhandari2022@gmail.com',
                    style: TextStyle(fontFamily: 'Explora', fontWeight: FontWeight.w600, fontSize:20.0),
                    ), )
                ),
            ]
          ),
        ),
      ),
    );
  }
}
