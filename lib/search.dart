import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image(String image){
      return  Expanded(
        flex: 1,
        child: Container(
          width: 25,
          height: 55,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
      );
    }
    Widget text(String text){
     return Expanded(
        flex: 3,
        child: Text(
          text,
          style: TextStyle(fontSize: 15),
        ),
      );
    }
    Widget timage( String image)
    { return Card(
        elevation: 5.0,
        child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)),
              shape: BoxShape.rectangle,
               image: DecorationImage(
               fit: BoxFit.fill,
            image: AssetImage(image)),
          ),
         ),
      );
      
    }

    return Scaffold(drawer: Drawer(
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
    ),appBar: AppBar(backgroundColor: Colors.blue[900],),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    //Expanded(
                      //child: Icon(Icons.list),
                    //),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      flex: 7,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: "search",
                          icon: Icon(
                            Icons.search,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 20, 20),
                  child: Center(
                    child: Text(
                      "Treanding",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
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
                        width: 5,
                      ),
                      timage("assets/sin.jpeg"),
                      timage("assets/sin4.jpeg"),
                      timage("assets/sin4.jpeg"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 20, 20),
                  child: Center(
                    child: Text(
                      "Recent Searchs",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                       image("assets/sin.jpeg"),
                        SizedBox(
                          width: 5,
                        ),
                       text("Arijit Singh")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                       image("assets/sin1.jpeg"),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "Arijit Singh",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        image("assets/sin4.jpeg"),
                        SizedBox(
                          width: 5,
                        ),
                        text("Arijit Singh"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        image("assets/sin1.jpeg"),
                        SizedBox(
                          width: 5,
                        ),
                        text("Arijit Singh"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        image("assets/sin.jpeg"),
                        SizedBox(
                          width: 5,
                        ),
                        text("Arijit Singh"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        image("assets/sin4.jpeg"),
                        SizedBox(
                          width: 5,
                        ),
                        text("Arijit Singh"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        image("assets/sin1.jpeg"),
                        SizedBox(
                          width: 5,
                        ),
                        text("Arijit Singh"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        image("assets/song.jpeg"),
                        SizedBox(
                          width: 5,
                        ),
                        text("Arijit Singh"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        image("assets/song.jpeg"),
                        SizedBox(
                          width: 5,
                        ),
                        text("Arijit Singh"),
                        
                      ],
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
