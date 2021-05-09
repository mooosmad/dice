import 'package:flutter/cupertino.dart';
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
  var r = 1;
  bool anim = false;
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
          width: 200,
          height: 200,
          child: GestureDetector(
              onTap: (){
                setState((){
                  anim = true;
                });
                Future.delayed(Duration(seconds : 1),(){
                  anim = false;
                  setState(() {
                    var rd = new Random();
                    r =  rd.nextInt(5) + 1;
                  });
                });
              },
           child: anim
              ? Container(
                  height: 180,
                  width: 180,
              child: Image.asset('assets/roll_dice.gif'),
            ) : Image.asset(listImagesnotFound[r])
           )
         ),
        ),
      );
  }

}

