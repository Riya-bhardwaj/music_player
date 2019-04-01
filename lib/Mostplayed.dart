import 'package:flutter/material.dart';
import 'package:musicplayer/search.dart';

class Mostplayed extends StatefulWidget {
  @override
  _MostplayedState createState() => _MostplayedState();
}

class _MostplayedState extends State<Mostplayed> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Card(
          elevation: 5.0,
          child: Column(children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/song1.jpeg"),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 5,
                      child: CircleAvatar(
                        radius: 25,
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Search()),
                              );
                            }),
                        backgroundColor: Colors.pink,
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 30,
              width: 300,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Motivational",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 30,
              width: 300,
              margin: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "From ffefsgg gfdgfg ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 30,
                    width: 300,
                    margin: EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "By Arijit Singh ",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 30,
                    width: 300,
                    margin: EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "3.65K ",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Add to favourite")
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.star),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Add to music"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ]),
        ),
      ),
    ));
  }
}
