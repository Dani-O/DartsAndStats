import 'package:dartapp/views/dashboard/perfomance/performance.dart';
import 'package:dartapp/views/dashboard/statistics/statistics.dart';
import 'package:dartapp/widgets/menubar/menubar.dart';
import 'package:dartapp/widgets/topbar/topbar.dart';
import 'package:flutter/material.dart';

import 'progress/progress.dart';

class DashboardMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Spacer(flex: 2),
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
    ); //
  }
}
