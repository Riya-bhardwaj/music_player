import 'package:flutter/material.dart';
import 'package:musicplayer/popular.dart';
import 'package:musicplayer/search.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:SingleChildScrollView(scrollDirection: Axis.vertical,
      child:
      Container(
        margin: EdgeInsets.all(20.0),
        child: Card(
          elevation: 5.0,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Card(
                    elevation: 5.0,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/song2.jpeg"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.pink,
                      child: IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>Search()),);
                      })
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 5,
                    child: Text(
                      " MTV Show",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 310,
                height: 50,
                child: Text(
                  " Hawayein ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 50,
                width: 310,
                child: Text(
                  "From Jab Harry met Shejal",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 50,
                      width: 310,
                      child: Text(
                        "By Arijit Singh",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 50,
                      width: 310,
                      child: Text(
                        "3.456K",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.favorite,color: Colors.pink,),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          " Add to Favourite",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.star_border),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          " Add to Favourite",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
    );
  }
}
