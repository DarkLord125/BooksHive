import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("E-Commerce App")),
      ),
      body: Center(
          child: Container(
        child: Text("Welcome to"),
      )),
      drawer: Drawer(),
    );
  }
}
