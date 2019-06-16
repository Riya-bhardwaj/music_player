import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Center(
              child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/music1.jpeg"),
          )),
        ),
      ),
    );
  }
}
