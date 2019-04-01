import 'package:flutter/material.dart';

void main() {
  runApp(new Login());
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Music",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 5,
          centerTitle: true,
          leading: Icon(
            Icons.list,
            color: Colors.black,
          ),
          title: Text(
            "Login",
            style: TextStyle(
                fontStyle: FontStyle.italic, fontSize: 25, color: Colors.black),
          ),
          actions: <Widget>[
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(5, 80, 5, 20),
              child: Center(
                child: Card(
                  elevation: 10.0,
                  color: Colors.black,
                  child: Container(
                    height: 135,
                    width: 135,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/music1.jpeg"))),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Save your music and ",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              child: Text(
                "create playlists ",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(height: 70,),
            Container(height: 45,
              width: 250,
              margin: EdgeInsets.fromLTRB(5, 40, 5, 10),
              child: RaisedButton(elevation: 5.0,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,
                  child: Text(
                    "Facebook",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  color: Colors.blue[900],
                  onPressed: () {}),
            ),
            Container(height: 45,
              width: 250,
              margin: EdgeInsets.fromLTRB(5, 2, 5, 10),
              child: RaisedButton(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,elevation: 5.0,
                  child: Text(
                    "Mobile Number",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  color: Colors.blue[900],
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
