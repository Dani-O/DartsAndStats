import 'package:dartapp/views/dashboard/progress/widgets.dart';
import 'package:flutter/material.dart';

class ProgressMobile extends StatelessWidget {
  final List<Color> gradientColors = [Color.fromRGBO(73, 106, 112, 1)];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Container(
            height: 356,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 205, 212, 213),
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 205, 212, 213).withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(2, 2), // changes position of shadow
                ),
              ],
            ),
            child: Column(children: <Widget>[
              TitleRow(
                  titleFontsize: 20,
                  containerHeight: 35,
                  containerWidth: 130,
                  paddingLeft: 40,
                  paddingRight: 25,
                  paddingTop: 25,
                  borderRadius: 27,
                  textFontsize: 18,
                  iconSize: 25),
              Expanded(
                  flex: 5,
                  child: Container(
                    child: Chart(gradientColors: gradientColors),
                  )),
            ])));
  }
}
