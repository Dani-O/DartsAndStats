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
                        TextStats(
                            flex: 2,
                            containerWidth: 120,
                            paddingLeft: 40,
                            paddingLeftTwo: 40,
                            paddingRight: 40,
                            paddingTop: 40,
                            paddingTopTwo: 20,
                            textFontsize: 16,
                            valueFontsize: 22),
                        CircleProgressIndicators(
                            flex: 3,
                            containerHeight: 200,
                            indicatorHeight: 140,
                            indicatorWidth: 140,
                            valueFontsize: 20,
                            textFontsize: 16,
                            valueBottom: 70,
                            textBottom: 45),
                        VerticalProgressIndicators(
                            flex: 3,
                            paddingRight: 40,
                            mainContainerHeight: 140,
                            textFontsize: 15,
                            containerHeight: 5,
                            containerWidth: 240,
                            horizontalMargin: 10),
                      ])),
            ])));
  }
}
