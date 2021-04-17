import 'package:dartapp/views/dashboard/perfomance/Widgets.dart';
import 'package:flutter/material.dart';

class PerfomanceTabletPotrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 20, left: 20),
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(73, 106, 112, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(22),
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
                  child:
                      PerfomanceTitle(EdgeInsets.only(left: 40, top: 20), 20)),
              //   Spacer(flex: 2),
              Expanded(
                flex: 8,
                child: Row(
                  children: [
                    //  Spacer(flex: 2),
                    Expanded(
                        flex: 2,
                        child: Container(
                            alignment: Alignment.centerRight,
                            child:
                                VarianceInCmCircle(200, 3, "3.2", 40, 10, 15))),
                    SizedBox(width: 60),
                    // Spacer(flex: 1),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DetailedVarianceHorizontal("2.7", 30, 25,
                              "vertical \nvariance in cm", 12, 60, 3),
                          SizedBox(height: 30),
                          DetailedVarianceHorizontal("3.7", 30, 25,
                              "horizontal \nvariance in cm", 12, 60, 3),
                        ],
                      ),
                    ),
                    //Spacer(flex: 2),
                  ],
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ));
  }
}

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
                        EdgeInsets.only(left: 30, top: 25), 20)),
                Spacer(flex: 1),
                Expanded(
                    flex: 5,
                    child: VarianceInCmCircle(300, 3, "3.2", 40, 10, 15)),
                Spacer(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 0),
                    DetailedVariance(
                        "2.7", 25, 17, "vertical \nvariance in cm", 12, 80, 3),
                    SizedBox(width: 30),
                    DetailedVariance("3.7", 25, 17,
                        "horizontal \nvariance in cm", 12, 80, 3),
                  ],
                ),
                Spacer(flex: 2),
              ],
            )));
  }
}
