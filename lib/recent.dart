import 'package:flutter/material.dart';
import 'package:musicplayer/search.dart';
class Recent extends StatefulWidget {
  @override
  _RecentState createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  bool fav=false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Stack(children: <Widget>[
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.teal,
              Colors.blue[700],

              // Colors.blue[800],
              //   Colors.blue[600],
            ]),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Search()));
                        }),
                  ),
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Now Playing",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
              ),
              CircleAvatar(
                  radius: 115,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://st1.bollywoodlife.com/wp-content/uploads/2018/07/DARSHAN-RAVAL_LIVE_IN_CONCERT_2017_pics_time_date_day_place_pass_tickets_venue_map_IN_AHMEDABAD_life_ahmedabad_city_portal_indias_raw_star_11.jpg")),
              SizedBox(height: 30),
              Container(
                child: Text(
                  "Feels",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  "Calvin Harrist ft. Katy Perry",
                  style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                        icon: Icon(
                          fav ? Icons.favorite : Icons.favorite_border,
                          color: fav ? Colors.pink : Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            fav = !fav;
                          });
                        }),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.more_horiz,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.white,
                height: 5,
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Icon(
                      Icons.cached,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.pause_circle_filled,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.playlist_add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ])),
    );
  }
}
