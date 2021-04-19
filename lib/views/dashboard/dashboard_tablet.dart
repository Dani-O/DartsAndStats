import 'package:dartapp/views/dashboard/perfomance/perfomance_tablet.dart';
import 'package:dartapp/views/dashboard/perfomance/performance.dart';
import 'package:dartapp/views/dashboard/progress/progress_tablet.dart';
import 'package:dartapp/views/dashboard/statistics/statistics.dart';
import 'package:dartapp/views/dashboard/statistics/statistics_tablet.dart';
import 'package:dartapp/widgets/menubar/menubar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'progress/progress.dart';

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
                Flexible(
                  flex: 91,
                  fit: FlexFit.tight,
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
