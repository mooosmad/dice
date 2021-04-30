import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dé',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _Home();
  }
}

class _Home extends State<Home> {
  List listImagesnotFound = [
    "assets/one.png",
    "assets/two.png",
    "assets/three.png",
    "assets/four.png",
    "assets/five.png",
    "assets/six.png"
  ];
  var r = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'Dé',
        ),
        elevation: 10,
      ),
      body: Center(
        child: Container(
          width: 180,
          height: 180,
          child: GestureDetector(
            onDoubleTap: (){
              setState((){
                var rd = new Random();
                r =  rd.nextInt(5);
              });
            },
           child: Image.asset(listImagesnotFound[r]),
           ),
        ),
        ),
      );
  }

}

