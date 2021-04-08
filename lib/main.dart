import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meme Maker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          
          Container(width: 20, height: 20),
          Text(
            '     MEME GENERATER',
            style: TextStyle(fontSize: 80),
          ),
          
          Container(
            child: Image.asset('images/logo.png', height: 250.0),
          ),
          RaisedButton(
            color: const Color(0xff1cbe0f),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },
            child: Text(
              'Let\'s Start',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 25,
                color: const Color(0xfff1eaea),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
