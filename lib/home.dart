import 'package:flutter/material.dart';
import 'package:musicplayer/Mostplayed.dart';
import 'package:musicplayer/body.dart';
import 'package:musicplayer/fav.dart';
import 'package:musicplayer/first.dart';
import 'package:musicplayer/login.dart';
import 'package:musicplayer/popular.dart';
import 'package:musicplayer/recent.dart';
import 'package:musicplayer/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return new Scaffold(
      appBar: PreferredSize(preferredSize:Size.fromHeight(80),
     child: AppBar(backgroundColor: Colors.blue[900],
        bottom: TabBar(
          controller: tabController,
          tabs: [
            new Tab(text: "Top"),
            new Tab(text: "Popular"),
            new Tab(text: "Most played"),
          ],
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
      ),
      body:new TabBarView(controller: tabController,children: [
        Body(),
        Popular(),
        Mostplayed(),
      ]),

      bottomNavigationBar: Container(color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(icon: Icon(Icons.home), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>First()));




            }),

          IconButton(icon: Icon(Icons.search), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>Search()));
          }),
          IconButton(icon: Icon(Icons.audiotrack), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Recent()));
          }),
          IconButton(icon: Icon(Icons.add_box), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>Favourite()));
          }),

          IconButton(icon: Icon(Icons.account_box), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Login()));

          }),


      ],),),
    );
  }
}
