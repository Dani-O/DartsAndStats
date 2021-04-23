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
    return Container(
        color: Colors.white,
        child: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.white,
                body: ListView(
                  children: [
                    // SizedBox(height: 10),
                    Topbar(),
                    SizedBox(height: 10),
                    ProgressMobile(),
                    SizedBox(height: 20),
                    PerfomanceMobile(),
                    SizedBox(height: 20),
                    StatisticsMobile(),
                  ],
                ),
                bottomNavigationBar: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.black12, width: 1.0))),
                  child: BottomNavigationBar(
                    backgroundColor: Colors.white,
                    elevation: 0.0,
                    type: BottomNavigationBarType.fixed,
                    //currentIndex: 0,
                    fixedColor: Color.fromRGBO(73, 106, 112, 1),
                    unselectedItemColor:
                        Color.fromRGBO(73, 106, 112, 1).withOpacity(0.6),
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
                ))));
  }
}
