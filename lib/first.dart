import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Center(
            child: Card(
              elevation: 5.0,
              child: Container(height: 250,
                width: 250,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(fit: BoxFit.fill,
                        image: AssetImage("assets/music1.jpeg"))),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
