import 'package:dartapp/views/dashboard/statistics/widgets.dart';
import 'package:flutter/material.dart';

class StatisticsDesktop extends StatelessWidget {
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
                  height: 50,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 40, top: 25),
                  child: Text(
                    "STATISTICS",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Segoe UI",
                        color: Theme.of(context).primaryColor,
                        decoration: TextDecoration.none),
                  )),
              Expanded(
                  flex: 5,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextStats(2, 120, 40, 40, 40, 40, 20, 16, 22),
                        CircleProgressIndicators(
                            3, 200, 140, 140, 20, 20, 70, 45),
                        VerticalProgressIndicators(3, 40, 140, 15, 5, 240, 10),
                      ])),
            ])));
  }
}
