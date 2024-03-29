import 'package:flutter/material.dart';
import 'package:musicplayer/body.dart';
import 'package:musicplayer/search.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget fimage(String image)
    {
      return Card(
        elevation: 5.0,
        child: Container(
          height: 170,
          width: 170,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.all(Radius.circular(5.0)),
            shape: BoxShape.rectangle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
          ),
        ),
      );
    }
    Widget timage(String image){
      return Card(
        elevation: 5.0,
        child: Container(
          height: 130,
          width: 150,
          decoration: BoxDecoration(
              borderRadius:
              BorderRadius.all(Radius.circular(5.0)),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(image))),
        ),
      );
    }
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.blue[900],
              title: Text(
                "Choose",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(fontSize: 15),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Search()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        //leading: Icon(Icons.list),
        centerTitle: true,
        title: Text(
          "Favourite",
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        ),
        actions: <Widget>[
          Icon(Icons.audiotrack),
        ],
      ),
      body: SafeArea(
        child: Container(
          //height: 300,
          //width: 300,
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                child: Center(
                  child: Text(
                    " Your Favourite",
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        fimage("assets/song2.jpeg"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mix: Apr01,2019",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Arijit Singh",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: <Widget>[
                        fimage("assets/pic2.jpeg"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mix: Apr01,2019",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Arijit Singh",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: <Widget>[
                        fimage("assets/pic3.jpeg"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mix: Apr01,2019",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Arijit Singh",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                " Top Picks for You",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    timage("assets/sin4.jpeg"),
                    SizedBox(
                      width: 5,
                    ),
                    timage("assets/sin1.jpeg"),
                    SizedBox(
                      width: 5.0,
                    ),
                    timage("assets/sin.jpeg"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
