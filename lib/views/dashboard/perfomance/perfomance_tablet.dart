import 'widgets.dart';
import 'package:flutter/material.dart';

class PerfomanceTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 30),
        child: Container(
            width: double.infinity,
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
              children: [
                Expanded(
                    flex: 2,
                    child: PerfomanceTitle(
                        edgeInsets: EdgeInsets.only(left: 30, top: 25),
                        fontsize: 20)),
                Spacer(flex: 1),
                Expanded(
                    flex: 5,
                    child: VarianceInCmCircle(
                        containerWidth: 200,
                        borderWidth: 3,
                        varianceValue: "3.2",
                        valueFontsize: 40,
                        sizeboxHeight: 10,
                        descriptionFontsize: 15)),
                Spacer(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 0),
                    DetailedVariance(
                        value: "2.7",
                        valueFontsize: 25,
                        sizeboxHeight: 17,
                        description: "vertical \nvariance in cm",
                        descriptionFontsize: 12,
                        containerWidth: 80,
                        containerBorderWidth: 3),
                    SizedBox(width: 30),
                    DetailedVariance(
                        value: "3.7",
                        valueFontsize: 25,
                        sizeboxHeight: 17,
                        description: "horizontal \nvariance in cm",
                        descriptionFontsize: 12,
                        containerWidth: 80,
                        containerBorderWidth: 3)
                  ],
                ),
                Spacer(flex: 2),
              ],
            )));
  }
}
