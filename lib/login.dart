import 'package:flutter/material.dart';
import 'package:musicplayer/first.dart';
import 'package:musicplayer/signup.dart';

void main() {
  runApp(new Login());
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool fav=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Music",
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.blue[900],
                title: Text(
                  "choose",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                title: Text(
                  " First page",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>First()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          elevation: 5,
          centerTitle: true,
          // leading: Icon(
          // Icons.list,
          //color: Colors.white,
          //),
          title: Text(
            "Login",
            style: TextStyle(
                fontStyle: FontStyle.italic, fontSize: 25, color: Colors.white),
          ),
          actions: <Widget>[
            Icon(
              Icons.more_vert,
              color: Colors.white,
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
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
            SizedBox(
              height: 70,
            ),
            Container(
              height: 45,
              width: 250,
              margin: EdgeInsets.fromLTRB(5, 40, 5, 10),
              child: RaisedButton(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Facebook",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  color: Colors.blue[900],
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Signup()));
                  }),
            ),
            Container(
              height: 45,
              width: 250,
              margin: EdgeInsets.fromLTRB(5, 2, 5, 10),
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 5.0,
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
