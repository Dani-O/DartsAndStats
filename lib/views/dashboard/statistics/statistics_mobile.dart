import 'package:dartapp/views/dashboard/statistics/widgets.dart';
import 'package:flutter/material.dart';

class StatisticsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10, left: 10),
        child: Container(
            width: double.infinity,
            height: 600,
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
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width < 350 ? 20 : 40,
                      top: 25,
                      bottom: 0),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        TextStats(
                            mainContainerWidth: 300,
                            containerWidth: 120,
                            paddingLeft: MediaQuery.of(context).size.width < 350
                                ? 20
                                : 40,
                            paddingLeftTwo:
                                MediaQuery.of(context).size.width < 350
                                    ? 15
                                    : 25,
                            paddingRight: 30,
                            paddingTop: 30,
                            paddingTopTwo: 16,
                            textFontsize: 16,
                            valueFontsize:
                                MediaQuery.of(context).size.width < 350
                                    ? 20
                                    : 25),
                        SizedBox(height: 40),
                        Expanded(
                            flex: 0,
                            child: Row(children: [
                              Spacer(flex: 1),
                              VerticalProgressIndicators(
                                  flex: 10,
                                  paddingRight: 0,
                                  mainContainerHeight: 120,
                                  textFontsize: 15,
                                  containerHeight: 5,
                                  containerWidth: 5,
                                  horizontalMargin: 10),
                              Spacer(flex: 1)
                            ])),
                        SizedBox(
                            height: MediaQuery.of(context).size.width < 350
                                ? 20
                                : 40),
                        Expanded(
                            flex: 0,
                            child: Row(children: [
                              Spacer(flex: 1),
                              CircleProgressIndicators(
                                flex: MediaQuery.of(context).size.width < 350
                                    ? 30
                                    : 10,
                                containerHeight: 120,
                                indicatorHeight: 110,
                                indicatorWidth: 110,
                                textFontsize:
                                    MediaQuery.of(context).size.width < 350
                                        ? 18
                                        : 20,
                                valueFontsize:
                                    MediaQuery.of(context).size.width < 350
                                        ? 18
                                        : 20,
                                padding: MediaQuery.of(context).size.width < 350
                                    ? 20
                                    : 25,
                                textBottom: 30,
                                paddingRight: 20,
                              ),
                              Spacer(flex: 1),
                            ]))
                      ])),
            ])));
  }
}
