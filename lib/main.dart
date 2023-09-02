import 'package:exam_practic/Views/Screens/Home_page.dart';
import 'package:exam_practic/Views/Screens/Splace_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Views/Screens/Intro_Screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences Pref = await SharedPreferences.getInstance();
  //
  // bool isDark = Pref.getBool('isDark') ?? false;

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Splace_screen(),
      'Intro': (context) => Intro_screen(),
      'Home': (context) => Home_page(),
    },
  ));
}
