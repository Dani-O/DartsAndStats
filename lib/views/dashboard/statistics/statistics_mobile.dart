import 'package:dartapp/views/dashboard/statistics/widgets.dart';
import 'package:flutter/material.dart';

class StatisticsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10, left: 10),
        child: Container(
            width: double.infinity,
            height: 750,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
            ),
            child: Column(children: [
              Container(
                  height: 20,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 40, top: 25, bottom: 0),
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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextStats(2, 120, 40, 25, 30, 40, 16, 16, 25),
                        SizedBox(height: 20),
                        VerticalProgressIndicators(2, 0, 140, 15, 5, 200, 10),
                        SizedBox(height: 10),
                        CircleProgressIndicators(
                            2, 120, 100, 100, 20, 20, 50, 25),
                      ])),
            ])));
  }
}
