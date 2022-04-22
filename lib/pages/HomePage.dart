import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int count = 30;
  final String name = 'Bijay';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
       title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("$name is doing $count App tutorials"),
        ),
      ),
    );
  }
}
