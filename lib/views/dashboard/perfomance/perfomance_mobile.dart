import 'widgets.dart';
import 'package:flutter/material.dart';

class PerfomanceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10, left: 10),
        child: Container(
          width: double.infinity,
          height: 300,
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
                  child: PerfomanceTitle(
                      edgeInsets: EdgeInsets.only(left: 40, top: 25),
                      fontsize: 20)),
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
                            child: VarianceInCmCircle(
                              containerWidth: 150,
                              borderWidth: 3,
                              varianceValue: "3.2",
                              valueFontsize: 40,
                              sizeboxHeight: 10,
                              descriptionFontsize: 15,
                            ))),
                    SizedBox(width: 30),
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
