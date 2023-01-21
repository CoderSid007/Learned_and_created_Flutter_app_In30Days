import 'package:flutter/material.dart';
import 'package:pseudocode/main.dart';
import 'package:pseudocode/widgets/drawer.dart';

class HomePage extends StatelessWidget {

  final int days = 30;
  final String name = "Pseudocode";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        iconTheme: IconThemeData(
          color: Colors.black,

        ),
        title: Text("Pseudocode",),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),

        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

