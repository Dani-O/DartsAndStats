import 'package:dartapp/views/dashboard/perfomance/perfomance_desktop.dart';
import 'package:dartapp/views/dashboard/progress/progress_desktop.dart';
import 'package:dartapp/views/dashboard/statistics/statistics_desktop.dart';
import 'package:dartapp/widgets/menubar/menubar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("Dashboard Desktop");
    return SafeArea(
        child: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Spacer(flex: 1),
          MenuBar(),
          Spacer(flex: 3),
          Flexible(
            flex: 50,
            fit: FlexFit.tight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: 120,
                  child: ProgressDesktop(),
                ),
                Spacer(flex: 2),
                Flexible(
                  flex: 40,
                  child: PerfomanceDesktop(),
                ),
              ],
            ),
          ),
          Spacer(flex: 2),
          Container(child: StatisticsDesktop()),
          Spacer(flex: 3),
        ],
      ),
    ));
  }
}
