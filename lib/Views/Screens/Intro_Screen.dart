import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro_screen extends StatefulWidget {
  const Intro_screen({super.key});

  @override
  State<Intro_screen> createState() => _Intro_screenState();
}

class _Intro_screenState extends State<Intro_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            body: "PLZ Visit Aagin My place",
            title: "Check A Food ",
            image: Image.asset("Asset/Images/food.gif"),
          ),
          PageViewModel(
            body: "====================",
            title: "Check A nasta ",
            image: Image.asset("Asset/Images/food.gif"),
          ),
        ],
        done: Text("Thank you"),
        onDone: () {
          Navigator.of(context).pushNamed('Home');
        },
        next: Text("Next"),
      ),
    );
  }
}
