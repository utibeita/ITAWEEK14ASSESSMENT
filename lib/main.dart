import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WEEK14ASSESSMENT',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        scaffoldBackgroundColor: Colors.blue,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: ListView(

              children: [

              Padding(padding: EdgeInsets.fromLTRB(50, 200, 10, 20),
                  child: Introduction()),

              Padding(padding: EdgeInsets.fromLTRB(50, 50, 90, 20),
              child:Button()),
            ]
          )
        )
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Smart \nInsurance \nHere !",
            style: TextStyle(color: Colors.white,fontSize: 50),
          ),

          Text(
            "Find all your needs faster \nthan ever",
            style: TextStyle(color: Colors.white,fontSize: 20),
          ),
        ],
      )
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
              onPressed: (){},
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  "New Account",
                  style: TextStyle(color: Colors.blue, fontSize: 13.0),
                ),
              ),
          ),
          OutlinedButton(
              onPressed: (){},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  "Sign In",
                style: TextStyle(color: Colors.white),

                ),

              ),
          )
        ],
      )
    );
  }
}

