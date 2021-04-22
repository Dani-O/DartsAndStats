import 'package:dartapp/views/dashboard/perfomance/perfomance_mobile.dart';
import 'package:dartapp/views/dashboard/progress/progress_mobile.dart';
import 'package:dartapp/views/dashboard/statistics/statistics_mobile.dart';
import 'package:dartapp/widgets/topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("Dashboard Mobile");
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 10),
          Topbar(),
          Spacer(flex: 3),
          Expanded(
            flex: 80,
            child: ListView(
              children: [
                ProgressMobile(),
                SizedBox(height: 20),
                PerfomanceMobile(),
                SizedBox(height: 20),
                StatisticsMobile(),
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
