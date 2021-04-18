import 'package:dartapp/views/dashboard/statistics/widgets.dart';
import 'package:flutter/material.dart';

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
                        TextStats(
                            flex: 2,
                            containerWidth: 120,
                            paddingLeft: 25,
                            paddingLeftTwo: 25,
                            paddingRight: 30,
                            paddingTop: 30,
                            paddingTopTwo: 16,
                            textFontsize: 12,
                            valueFontsize: 18),
                        CircleProgressIndicators(
                            flex: 3,
                            containerHeight: 160,
                            indicatorHeight: 100,
                            indicatorWidth: 100,
                            valueFontsize: 20,
                            textFontsize: 20,
                            valueBottom: 50,
                            textBottom: 25),
                        VerticalProgressIndicators(
                            flex: 3,
                            paddingRight: 25,
                            mainContainerHeight: 140,
                            textFontsize: 15,
                            containerHeight: 5,
                            containerWidth: 200,
                            horizontalMargin: 10),
                      ])),
            ])));
  }
}
