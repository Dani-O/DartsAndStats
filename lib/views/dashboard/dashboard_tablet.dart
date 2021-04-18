import 'package:dartapp/views/dashboard/perfomance/performance.dart';
import 'package:dartapp/views/dashboard/statistics/statistics.dart';
import 'package:dartapp/widgets/menubar.dart';
import 'package:dartapp/widgets/topbar.dart';
import 'package:flutter/material.dart';

import 'progress/progress.dart';

class DashboardTabletPotrait extends StatelessWidget {
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
          Spacer(flex: 2),
          Expanded(
            flex: 60,
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
          // Spacer(flex: 4),
          MenuBar(),
        ],
      ),
    );
  }
}

class DashboardTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Spacer(flex: 2),
          Flexible(
            flex: 8,
            child: MenuBar(),
          ),
          Spacer(flex: 2),
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
                //  Spacer(flex: 1),
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
