import 'package:dartapp/views/dashboard/progress/widgets.dart';
import 'package:flutter/material.dart';

class ProgressDesktop extends StatelessWidget {
  final List<Color> gradientColors = [Color.fromRGBO(73, 106, 112, 1)];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: 30,
        ),
        child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 205, 212, 213),
                borderRadius: BorderRadius.all(
                  Radius.circular(38),
                )),
            child: Column(children: <Widget>[
              TitleRow(
                  titleFontsize: 25,
                  buttonHeight: 40,
                  buttonWidth: 130,
                  buttonPaddingLeft: 40,
                  buttonPaddingRight: 40,
                  buttonPaddingTop: 25,
                  buttonBorderRadius: 27,
                  buttonTextFontsize: 18,
                  buttonIconSize: 25),
              Expanded(
                  flex: 5,
                  child: Container(
                    child: Chart(gradientColors: gradientColors),
                  )),
            ])));
  }
}
