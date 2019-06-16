import 'package:flutter/material.dart';
import 'package:musicplayer/search.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  bool star=false;
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:NetworkImage("https://media.timeout.com/images/103816489/630/472/image.jpg")
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
                                              Search()));
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
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                      child: IconButton(
                          icon: Icon(
                            fav ? Icons.favorite : Icons.favorite_border,
                            color: fav ? Colors.pink : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              fav = !fav;
                            });
                          }),
                    ),
                    Expanded(
                        child: IconButton(
                            icon: Icon(star ? Icons.star : Icons.star_border,
                                color: star ? Colors.pink : Colors.grey),
                            onPressed: () {
                              setState(() {
                                star = !star;
                              });
                            }))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text("Add to favourite"),
                    ),
                    Expanded(
                      child: Text("Add to Music"),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
