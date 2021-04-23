import 'package:flutter/material.dart';

import 'widgets.dart';

class PerfomanceDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 30),
        child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(73, 106, 112, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(38),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(73, 106, 112, 1).withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    alignment: Alignment.topCenter,
                    height: 50,
                    child: PerfomanceTitle(
                        edgeInsets: EdgeInsets.only(left: 40, top: 25),
                        fontsize: 22)),
                Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      VarianceInCmCircle(
                          containerWidth: 180,
                          borderWidth: 3,
                          varianceValue: "3.2",
                          valueFontsize: 60,
                          sizeboxHeight: 10,
                          descriptionFontsize: 15),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 0),
                          DetailedVariance(
                              value: "2.7",
                              valueFontsize: 40,
                              sizeboxHeight: 17,
                              description: "vertical \nvariance in cm",
                              descriptionFontsize: 14,
                              containerWidth: 100,
                              containerBorderWidth: 3),
                          SizedBox(width: 50),
                          DetailedVariance(
                              value: "3.7",
                              valueFontsize: 40,
                              sizeboxHeight: 17,
                              description: "horizontal \nvariance in cm",
                              descriptionFontsize: 14,
                              containerWidth: 100,
                              containerBorderWidth: 3),
                        ],
                      ),
                    ]))
              ],
            )));
  }
}
