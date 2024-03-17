import 'package:flutter/material.dart';
import 'package:smarthome/Home_Living.dart';
import 'package:smarthome/Living.dart';
class MyTapBar extends StatefulWidget {
  @override
  _MyTapBarState createState() => _MyTapBarState();
}

class _MyTapBarState extends State<MyTapBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2e2e3e),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/menu.png", height: 35),
              Text(
                "Beach Housh",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset("assets/1.png"),
              )
            ],
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.lightGreenAccent,
            tabs: [
              Tab(text: 'Living Room '),
              Tab(text: 'Kichen'),
              Tab(text: 'bathroom'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                home_living(),
                home_living(),

                Center(child: Text('Content for Item 3')),
              ],
            ),
          ),
          Image.asset("assets/Navbar.png")
        ],
      ),
    );
  }
}