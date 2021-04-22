import 'package:dartapp/views/dashboard/perfomance/perfomance_tablet.dart';
import 'package:dartapp/views/dashboard/progress/progress_tablet.dart';
import 'package:dartapp/views/dashboard/statistics/statistics_tablet.dart';
import 'package:dartapp/widgets/menubar/menubar.dart';
import 'package:dartapp/widgets/topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("Dashboard Tablet");
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Spacer(flex: 1),
          MenuBar(),
          Spacer(flex: 1),
          Flexible(
            flex: 50,
            fit: FlexFit.tight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: 120,
                  child: ProgressTabletLandscape(),
                ),
                Spacer(flex: 1),
                Flexible(
                  flex: 45,
                  child: PerfomanceTabletLandscape(),
                ),
              ],
            ),
          ),
          Spacer(flex: 2),
          Flexible(
            flex: 28,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: StatisticsTabletLandscape(),
                ),
              ],
            ),
          ),
          Spacer(flex: 3),
        ],
      ),
    );
  }
}

class DashboardTabletPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("Dashboard Tablet Potrait");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 5),
          Topbar(),
          SizedBox(height: 20),
          Expanded(
            flex: 9,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Expanded(child: Container(child: ProgressTabletLandscape())),
              Container(width: 250, child: PerfomanceTabletPotrait()),
            ]),
          ),
          SizedBox(height: 5),
          Expanded(flex: 10, child: StatisticsTabletPortrait()),
          SizedBox(height: 15),
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
    );
  }
}
