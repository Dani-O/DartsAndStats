import 'package:dartapp/views/dashboard/statistics/widgets.dart';
import 'package:flutter/material.dart';

class StatisticsTabletPotrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(22.0),
            child: Container(
              height: 400,
              color: Color.fromARGB(255, 105, 150, 158),
            )));
  }
}

class StatisticsTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 30, left: 30),
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(38),
              ),
            ),
            child: Column(children: [
              Container(
                  height: 40,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 40, top: 20),
                  child: Text(
                    "STATISTICS",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Segoe UI",
                        color: Theme.of(context).primaryColor,
                        decoration: TextDecoration.none),
                  )),
              Expanded(
                  flex: 9,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextStats(2, 120, 25, 25, 30, 40, 16, 12, 18),
                        CircleProgressIndicators(
                            3, 160, 100, 100, 20, 20, 50, 25),
                        VerticalProgressIndicators(3, 25, 140, 15, 5, 200, 10),
                      ])),
            ])));
  }
}
