import 'package:flutter/material.dart';

import 'widgets.dart';

class PerfomanceDesktop extends StatelessWidget {
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
                Container(
                    alignment: Alignment.topCenter,
                    height: 100,
                    child: PerfomanceTitle(
                        EdgeInsets.only(left: 40, top: 25), 25)),
                Spacer(flex: 1),
                Expanded(
                    flex: 5,
                    child: VarianceInCmCircle(300, 3, "3.2", 60, 10, 15)),
                Spacer(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    DetailedVariance(
                        "2.7", 40, 17, "vertical \nvariance in cm", 14, 100, 3),
                    SizedBox(width: 50),
                    DetailedVariance("3.7", 40, 17,
                        "horizontal \nvariance in cm", 14, 100, 3),
                  ],
                ),
                Spacer(flex: 2),
              ],
            )));
  }
}
