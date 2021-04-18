import 'package:dartapp/views/dashboard/perfomance/performance.dart';
import 'package:dartapp/views/dashboard/statistics/statistics.dart';
import 'package:dartapp/widgets/menubar/menubar.dart';
import 'package:flutter/material.dart';

import 'progress/progress.dart';

class DashboardTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  child: Progress(),
                ),
                Flexible(
                  flex: 45,
                  child: Perfomance(),
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
                  child: Statistics(),
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
