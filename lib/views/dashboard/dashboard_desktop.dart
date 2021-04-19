import 'package:dartapp/views/dashboard/perfomance/perfomance_desktop.dart';
import 'package:dartapp/views/dashboard/perfomance/performance.dart';
import 'package:dartapp/views/dashboard/progress/progress.dart';
import 'package:dartapp/views/dashboard/progress/progress_desktop.dart';
import 'package:dartapp/views/dashboard/statistics/statistics.dart';
import 'package:dartapp/views/dashboard/statistics/statistics_desktop.dart';
import 'package:dartapp/widgets/menubar/menubar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("Dashboard Desktop");
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
          Flexible(
            flex: 28,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 91,
                  fit: FlexFit.tight,
                  child: StatisticsDesktop(),
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
