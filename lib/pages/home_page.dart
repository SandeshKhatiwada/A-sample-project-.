import 'package:flutter/material.dart';
import 'package:mynewapp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Codepur";
  @override
  Widget build(BuildContext context) {

        return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Catalog App"),

        ),
        body: Center(
        child: Container(
        child: Text("Welcome to $days days flutter class by $name"),
    ),
    ),
          drawer: MyDrawer(),
    );
  }
}
