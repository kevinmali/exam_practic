import 'dart:convert';

import 'package:exam_practic/Model/Recip_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  String? data;

  List<recipes> recipe = [];

  Future<void> loadJSON() async {
    data = await rootBundle.loadString("Asset/Images/newdata.json");

    setState(() {
      List decodeList = jsonDecode(data!);

      recipe = decodeList.map((e) => recipes.fromMap(data: e)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    loadJSON();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: recipe.length,
          itemBuilder: (context, i) => Card(
            color: Colors.white24,
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                ListTile(
                  leading: Text("${recipe[i].name}"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
