import 'package:dartapp/views/dashboard/statistics/widgets.dart';
import 'package:flutter/material.dart';

class StatisticsTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 20, left: 20),
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
                    "STATISTIC",
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
                            mainContainerWidth: 250,
                            containerWidth: 120,
                            paddingLeft: 20,
                            paddingLeftTwo: 20,
                            paddingRight: 40,
                            paddingTop: 30,
                            paddingTopTwo: 15,
                            textFontsize: 16,
                            valueFontsize: 22),
                        Spacer(flex: 2),
                        CircleProgressIndicators(
                            flex: 20,
                            containerHeight: 150,
                            indicatorWidth: 100,
                            valueFontsize: 20,
                            textFontsize: 20,
                            padding: 25,
                            textBottom: 25,
                            paddingRight: 25),
                        Spacer(flex: 2),
                        VerticalProgressIndicators(
                            flex: 16,
                            paddingRight: 20,
                            mainContainerHeight: 140,
                            textFontsize: 15,
                            containerHeight: 5,
                            containerWidth: 5,
                            horizontalMargin: 10),
                      ])),
            ])));
  }
}

class StatisticsTabletPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              margin: EdgeInsets.only(left: 70, top: 25, bottom: 0),
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                SizedBox(height: 0),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  TextStats(
                      mainContainerWidth: 280,
                      containerWidth: 120,
                      paddingLeft: 40,
                      paddingLeftTwo: 25,
                      paddingRight: 30,
                      paddingTop: 30,
                      paddingTopTwo: 16,
                      textFontsize: 16,
                      valueFontsize: 25),
                  SizedBox(width: 20),
                  VerticalProgressIndicators(
                      flex: 3,
                      paddingRight: 50,
                      mainContainerHeight: 140,
                      textFontsize: 15,
                      containerHeight: 5,
                      containerWidth: 5,
                      horizontalMargin: 10)
                ]),
                SizedBox(height: 20),
                Row(
                  children: [
                    Spacer(flex: 1),
                    CircleProgressIndicators(
                      flex: 4,
                      containerHeight: 120,
                      indicatorHeight: 120,
                      indicatorWidth: 120,
                      textFontsize: 25,
                      valueFontsize: 25,
                      padding: 25,
                      textBottom: 35,
                      paddingRight: 40,
                    ),
                    Spacer(flex: 1)
                  ],
                )
              ])),
        ]));
  }
}
