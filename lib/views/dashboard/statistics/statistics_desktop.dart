import 'package:dartapp/views/dashboard/statistics/widgets.dart';
import 'package:flutter/material.dart';

class StatisticsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  debugPrint("Statistics Desktop");
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
              Container(
                  height: 220,
                  color: Colors.red.withOpacity(0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextStats(
                            mainContainerWidth: 270,
                            containerWidth: 120,
                            paddingLeft:
                                MediaQuery.of(context).size.width < 1500
                                    ? 20
                                    : 40,
                            paddingLeftTwo: 40,
                            paddingRight: 40,
                            paddingTop: 40,
                            paddingTopTwo: 20,
                            textFontsize: 16,
                            valueFontsize: 22),
                        Spacer(
                            flex: MediaQuery.of(context).size.width < 1500
                                ? 2
                                : 4),
                        CircleProgressIndicators(
                            flex: 18,
                            containerHeight: 170,
                            indicatorHeight: 140,
                            indicatorWidth: 140,
                            valueFontsize: 20,
                            textFontsize: 16,
                            padding: 30,
                            textBottom: 45,
                            paddingRight: 40),
                        Spacer(
                            flex: MediaQuery.of(context).size.width < 350
                                ? 2
                                : 4),
                        VerticalProgressIndicators(
                            flex: 14,
                            paddingRight:
                                MediaQuery.of(context).size.width < 1500
                                    ? 20
                                    : 40,
                            mainContainerHeight: 140,
                            textFontsize: 15,
                            containerHeight: 5,
                            containerWidth: 5,
                            horizontalMargin: 10),
                      ])),
            ])));
  }
}
