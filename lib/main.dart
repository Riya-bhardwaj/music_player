import 'package:flutter/material.dart';
import 'package:musicplayer/home.dart';

void main()
{
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:Colors.indigo,

        brightness: Brightness.light,



      ),
      title: "Music player",home: Home(),);
  }
}
