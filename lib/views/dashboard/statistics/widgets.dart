import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TextStats extends StatelessWidget {
  final double paddingLeft;
  final double paddingLeftTwo;
  final double paddingRight;
  final double paddingTopTwo;
  final double textFontsize;
  final double valueFontsize;
  final double mainContainerWidth;
  final double containerWidth;
  final double paddingTop;

  const TextStats(
      {@required this.mainContainerWidth,
      @required this.containerWidth,
      @required this.paddingLeft,
      @required this.paddingLeftTwo,
      @required this.paddingRight,
      @required this.paddingTop,
      @required this.paddingTopTwo,
      @required this.textFontsize,
      @required this.valueFontsize});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: mainContainerWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: paddingLeft),
                child: Text(
                  "You have thrown 350 darts and \nplayed 31 games this week",
                  style: TextStyle(
                      fontSize: textFontsize,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Segoe UI",
                      color: Theme.of(context).primaryColor.withOpacity(0.6),
                      decoration: TextDecoration.none),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: containerWidth,
                    alignment: Alignment.topLeft,
                    padding:
                        EdgeInsets.only(left: paddingLeft, top: paddingTop),
                    child: Text(
                      "21",
                      style: TextStyle(
                          fontSize: valueFontsize,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Segoe UI",
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.none),
                    )),
                Container(
                    width: containerWidth,
                    alignment: Alignment.topLeft,
                    padding:
                        EdgeInsets.only(left: paddingLeftTwo, top: paddingTop),
                    child: Text(
                      "112",
                      style: TextStyle(
                          fontSize: valueFontsize,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Segoe UI",
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.none),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: containerWidth,
                    alignment: Alignment.topLeft,
                    padding:
                        EdgeInsets.only(left: paddingLeft, top: paddingTopTwo),
                    child: Text(
                      "best game",
                      style: TextStyle(
                          fontSize: textFontsize,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Segoe UI",
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.6),
                          decoration: TextDecoration.none),
                    )),
                Container(
                    width: 120,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(
                        left: paddingLeftTwo, top: paddingTopTwo),
                    child: Text(
                      "best finish",
                      style: TextStyle(
                          fontSize: textFontsize,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Segoe UI",
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.6),
                          decoration: TextDecoration.none),
                    )),
              ],
            ),
          ],
        ));
  }
}

class CircleProgressIndicators extends StatelessWidget {
  final int flex;
  final double containerHeight;
  final double indicatorHeight;
  final double indicatorWidth;
  final double valueFontsize;
  final double textFontsize;
  final double padding;
  final double textBottom;
  final double paddingRight;

  const CircleProgressIndicators({
    @required this.flex,
    @required this.containerHeight,
    this.indicatorHeight,
    @required this.indicatorWidth,
    @required this.valueFontsize,
    @required this.textFontsize,
    @required this.padding,
    @required this.textBottom,
    @required this.paddingRight,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Container(
          height: containerHeight,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                flex: 1,
                child: CircleIndicatorStack(
                    indicatorHeight: indicatorHeight,
                    indicatorWidth: indicatorWidth,
                    valueFontsize: valueFontsize,
                    padding: padding,
                    textBottom: textBottom,
                    value: "50%",
                    indicatorValue: 0.5,
                    descriptionValue: "checkout")),
            SizedBox(width: paddingRight),
            Expanded(
                flex: 1,
                child: CircleIndicatorStack(
                    indicatorHeight: indicatorHeight,
                    indicatorWidth: indicatorWidth,
                    valueFontsize: valueFontsize,
                    padding: padding,
                    textBottom: textBottom,
                    value: "2 / 4",
                    indicatorValue: 0.5,
                    descriptionValue: "180s")),
            SizedBox(width: paddingRight),
            Expanded(
                flex: 1,
                child: CircleIndicatorStack(
                  indicatorHeight: indicatorHeight,
                  indicatorWidth: indicatorWidth,
                  valueFontsize: valueFontsize,
                  padding: padding,
                  textBottom: textBottom,
                  value: "17 / 34",
                  indicatorValue: 0.5,
                  descriptionValue: "100+",
                ))
          ]),
        ));
  }
}

class CircleIndicatorStack extends StatelessWidget {
  const CircleIndicatorStack({
    Key key,
    @required this.indicatorHeight,
    @required this.indicatorWidth,
    @required this.valueFontsize,
    @required this.padding,
    @required this.textBottom,
    @required this.indicatorValue,
    @required this.value,
    @required this.descriptionValue,
  }) : super(key: key);

  final double indicatorHeight;
  final double indicatorWidth;
  final double valueFontsize;
  final double padding;
  final double textBottom;
  final double indicatorValue;
  final String value;
  final String descriptionValue;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      AspectRatio(
          aspectRatio: 1,
          child: Container(
              height: indicatorHeight,
              width: indicatorWidth,
              child: CircularProgressIndicator(
                backgroundColor:
                    Theme.of(context).primaryColor.withOpacity(0.1),
                valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).primaryColor.withOpacity(1)),
                strokeWidth: 5,
                value: indicatorValue,
              ))),
      Container(
        padding: EdgeInsets.only(bottom: padding),
        alignment: Alignment.center,
        child: Text(
          value,
          style: TextStyle(
              fontSize: valueFontsize,
              fontWeight: FontWeight.normal,
              fontFamily: "Segoe UI",
              color: Theme.of(context).primaryColor,
              decoration: TextDecoration.none),
        ),
      ),
      Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: padding),
          child: Text(
            descriptionValue,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                fontFamily: "Segoe UI",
                color: Theme.of(context).primaryColor.withOpacity(0.6),
                decoration: TextDecoration.none),
          )),
    ]);
  }
}

class VerticalProgressIndicators extends StatelessWidget {
  final int flex;
  final double paddingRight;
  final double mainContainerHeight;
  final double textFontsize;
  final double containerHeight;
  final int containerWidth;
  final double horizontalMargin;
  const VerticalProgressIndicators(
      {@required this.flex,
      @required this.paddingRight,
      @required this.mainContainerHeight,
      @required this.textFontsize,
      @required this.containerHeight,
      @required this.containerWidth,
      @required this.horizontalMargin});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Container(
            padding: EdgeInsets.only(right: paddingRight),
            height: mainContainerHeight,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinearIndicatorRow(
                    descriptionValue: "first 9",
                    indicatorValue: 0.6,
                    value: "60.2",
                    textFontsize: textFontsize,
                    containerHeight: containerHeight,
                    containerWidth: containerWidth,
                    horizontalMargin: horizontalMargin),
                LinearIndicatorRow(
                    descriptionValue: "first 12",
                    indicatorValue: 0.45,
                    value: "45.9",
                    textFontsize: textFontsize,
                    containerHeight: containerHeight,
                    containerWidth: containerWidth,
                    horizontalMargin: horizontalMargin),
                LinearIndicatorRow(
                    descriptionValue: "first 15",
                    indicatorValue: 0.4,
                    value: "40.2",
                    textFontsize: textFontsize,
                    containerHeight: containerHeight,
                    containerWidth: containerWidth,
                    horizontalMargin: horizontalMargin),
                LinearIndicatorRow(
                    descriptionValue: "3d avg",
                    indicatorValue: 0.46,
                    value: "45.7",
                    textFontsize: textFontsize,
                    containerHeight: containerHeight,
                    containerWidth: containerWidth,
                    horizontalMargin: horizontalMargin),
              ],
            )));
  }
}

class LinearIndicatorRow extends StatelessWidget {
  final String descriptionValue;
  final double indicatorValue;
  final String value;
  final double textFontsize;
  final double containerHeight;
  final int containerWidth;
  final double horizontalMargin;
  const LinearIndicatorRow(
      {@required this.descriptionValue,
      @required this.indicatorValue,
      @required this.value,
      @required this.textFontsize,
      @required this.containerHeight,
      @required this.containerWidth,
      @required this.horizontalMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Row(
          children: [
            Text(
              descriptionValue,
              style: TextStyle(
                  fontSize: textFontsize,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Segoe UI",
                  color: Theme.of(context).primaryColor.withOpacity(0.6),
                  decoration: TextDecoration.none),
            ),
            Expanded(
              flex: containerWidth,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
                  height: containerHeight,
                  child: LinearProgressIndicator(
                      backgroundColor:
                          Theme.of(context).primaryColor.withOpacity(0.1),
                      valueColor: AlwaysStoppedAnimation(
                          Theme.of(context).primaryColor.withOpacity(1)),
                      value: indicatorValue)),
            ),
            Text(
              value,
              style: TextStyle(
                  fontSize: textFontsize,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Segoe UI",
                  color: Theme.of(context).primaryColor.withOpacity(0.6),
                  decoration: TextDecoration.none),
            ),
            //  Spacer(flex: 1),
          ],
        ));
  }
}
