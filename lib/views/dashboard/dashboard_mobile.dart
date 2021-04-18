import 'package:dartapp/views/dashboard/perfomance/performance.dart';
import 'package:dartapp/views/dashboard/statistics/statistics.dart';
import 'package:dartapp/widgets/topbar.dart';
import 'package:flutter/material.dart';

import 'progress/progress.dart';

class DashboardMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 5),
          Topbar(),
          Spacer(flex: 1),
          Expanded(
            flex: 80,
            child: ListView(
              children: [
                Progress(),
                SizedBox(height: 20),
                Perfomance(),
                SizedBox(height: 20),
                Statistics(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        //currentIndex: 0,
        fixedColor: Color.fromRGBO(73, 106, 112, 1),
        unselectedItemColor: Color.fromRGBO(73, 106, 112, 1).withOpacity(0.6),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Dashboard",
            icon: Icon(Icons.grid_view),
          ),
          BottomNavigationBarItem(
            label: "Play Game",
            icon: Icon(Icons.play_arrow),
          ),
          BottomNavigationBarItem(
            label: "History",
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            label: "Player",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    ));
  }
}

/*
return SafeArea(
        child: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 5),
          Topbar(),
          Spacer(flex: 1),
          Expanded(
            flex: 80,
            child: ListView(
              children: [
                Progress(),
                SizedBox(height: 20),
                Perfomance(),
                SizedBox(height: 20),
                Statistics(),
              ],
            ),
          ),
          MenuBar(),
        ],
      ),
    ))

    */
