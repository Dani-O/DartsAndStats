import 'package:dartapp/views/dashboard/statistics/widgets.dart';
import 'package:flutter/material.dart';

class StatisticsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10, left: 10),
        child: Container(
            width: double.infinity,
            height: 700,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
            ),
            child: Column(children: [
              Container(
                  height: 30,
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
                  flex: 8,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextStats(
                            flex: 2,
                            containerWidth: 120,
                            paddingLeft: 40,
                            paddingLeftTwo: 25,
                            paddingRight: 30,
                            paddingTop: 40,
                            paddingTopTwo: 16,
                            textFontsize: 16,
                            valueFontsize: 25),
                        SizedBox(height: 20),
                        VerticalProgressIndicators(
                            flex: 2,
                            paddingRight: 0,
                            mainContainerHeight: 140,
                            textFontsize: 15,
                            containerHeight: 5,
                            containerWidth: 240,
                            horizontalMargin: 10),
                        SizedBox(height: 10),
                        CircleProgressIndicators(
                          flex: 2,
                          containerHeight: 120,
                          indicatorHeight: 110,
                          indicatorWidth: 110,
                          textFontsize: 20,
                          valueFontsize: 20,
                          valueBottom: 55,
                          textBottom: 30,
                        ),
                      ])),
            ])));
  }
}
