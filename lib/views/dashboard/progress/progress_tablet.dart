import 'package:dartapp/views/dashboard/progress/widgets.dart';
import 'package:flutter/material.dart';

class ProgressTabletLandscape extends StatelessWidget {
  final List<Color> gradientColors = [Color.fromRGBO(73, 106, 112, 1)];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30, right: 20),
        child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 205, 212, 213),
                borderRadius: BorderRadius.all(
                  Radius.circular(38),
                )),
            child: Column(children: <Widget>[
              TitleRow(
                  titleFontsize: 20,
                  containerHeight: 40,
                  containerWidth: 130,
                  paddingLeft: 40,
                  paddingRight: 40,
                  paddingTop: 25,
                  borderRadius: 27,
                  textFontsize: 16,
                  iconSize: 25),
              Expanded(
                  flex: 5,
                  child: Container(
                    child: Chart(gradientColors: gradientColors),
                  )),
            ])));
  }
}
