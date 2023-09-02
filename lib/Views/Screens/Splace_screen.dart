import 'dart:async';

import 'package:flutter/material.dart';

class Splace_screen extends StatefulWidget {
  const Splace_screen({super.key});

  @override
  State<Splace_screen> createState() => _Splace_screenState();
}

class _Splace_screenState extends State<Splace_screen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'Intro');
    });
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "Asset/Images/food.gif",
              height: 150,
              width: 150,
            ),
          ),
          Text("Welcome")
        ],
      ),
    );
  }
}
