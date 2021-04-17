import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TextStats extends StatelessWidget {
  final double paddingLeft;
  final double paddingLeftTwo;
  final double paddingRight;
  final double paddingTopTwo;
  final double textFontsize;
  final double valueFontsize;
  final int flex;
  final double containerWidth;
  final double paddingTop;

  const TextStats(
      this.flex,
      this.containerWidth,
      this.paddingLeft,
      this.paddingLeftTwo,
      this.paddingRight,
      this.paddingTop,
      this.paddingTopTwo,
      this.textFontsize,
      this.valueFontsize);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
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
  final double valueBottom;
  final double textBottom;

  const CircleProgressIndicators(
      this.flex,
      this.containerHeight,
      this.indicatorHeight,
      this.indicatorWidth,
      this.valueFontsize,
      this.textFontsize,
      this.valueBottom,
      this.textBottom);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Container(
          height: containerHeight,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            CircleIndicatorStack(
                indicatorHeight: indicatorHeight,
                indicatorWidth: indicatorWidth,
                valueFontsize: valueFontsize,
                valueBottom: valueBottom,
                textBottom: textBottom,
                value: "50%",
                indicatorValue: 0.5,
                descriptionValue: "checkout"),
            CircleIndicatorStack(
                indicatorHeight: indicatorHeight,
                indicatorWidth: indicatorWidth,
                valueFontsize: valueFontsize,
                valueBottom: valueBottom,
                textBottom: textBottom,
                value: "2 / 4",
                indicatorValue: 0.5,
                descriptionValue: "180s"),
            CircleIndicatorStack(
                indicatorHeight: indicatorHeight,
                indicatorWidth: indicatorWidth,
                valueFontsize: valueFontsize,
                valueBottom: valueBottom,
                textBottom: textBottom,
                value: "17 / 34",
                indicatorValue: 0.5,
                descriptionValue: "100+"),
          ]),
        ));
  }
}

class CircleIndicatorStack extends StatelessWidget {
  const CircleIndicatorStack(
      {Key key,
      @required this.indicatorHeight,
      @required this.indicatorWidth,
      @required this.valueFontsize,
      @required this.valueBottom,
      @required this.textBottom,
      @required this.indicatorValue,
      @required this.value,
      @required this.descriptionValue})
      : super(key: key);

  final double indicatorHeight;
  final double indicatorWidth;
  final double valueFontsize;
  final double valueBottom;
  final double textBottom;
  final double indicatorValue;
  final String value;
  final String descriptionValue;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
          height: indicatorHeight,
          width: indicatorWidth,
          child: CircularProgressIndicator(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
            valueColor: AlwaysStoppedAnimation(
                Theme.of(context).primaryColor.withOpacity(1)),
            strokeWidth: 5,
            value: indicatorValue,
          )),
      Positioned(
        child: Text(
          value,
          style: TextStyle(
              fontSize: valueFontsize,
              fontWeight: FontWeight.normal,
              fontFamily: "Segoe UI",
              color: Theme.of(context).primaryColor,
              decoration: TextDecoration.none),
        ),
        bottom: valueBottom,
      ),
      Positioned(
        child: Text(
          descriptionValue,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              fontFamily: "Segoe UI",
              color: Theme.of(context).primaryColor.withOpacity(0.6),
              decoration: TextDecoration.none),
        ),
        bottom: textBottom,
      )
    ]);
  }
}

class VerticalProgressIndicators extends StatelessWidget {
  final int flex;
  final double paddingRight;
  final double mainContainerHeight;
  final double textFontsize;
  final double containerHeight;
  final double containerwidth;
  final double horizontalMargin;
  const VerticalProgressIndicators(
      this.flex,
      this.paddingRight,
      this.mainContainerHeight,
      this.textFontsize,
      this.containerHeight,
      this.containerwidth,
      this.horizontalMargin);

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
              children: [
                LinearIndicatorRow("first 9", 0.6, "60.2", textFontsize,
                    containerHeight, containerwidth, horizontalMargin),
                LinearIndicatorRow("first 12", 0.45, "45.9", textFontsize,
                    containerHeight, containerwidth, horizontalMargin),
                LinearIndicatorRow("first 15", 0.4, "40.2", textFontsize,
                    containerHeight, containerwidth, horizontalMargin),
                LinearIndicatorRow("3d avg", 0.46, "45.7", textFontsize,
                    containerHeight, containerwidth, horizontalMargin),
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
  final double containerwidth;
  final double horizontalMargin;
  const LinearIndicatorRow(
      this.descriptionValue,
      this.indicatorValue,
      this.value,
      this.textFontsize,
      this.containerHeight,
      this.containerwidth,
      this.horizontalMargin);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: getValueForScreenType<MainAxisAlignment>(
        context: context,
        mobile: MainAxisAlignment.center,
        tablet: MainAxisAlignment.end,
        desktop: MainAxisAlignment.end,
      ),
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
        Container(
            margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
            width: containerwidth,
            height: containerHeight,
            child: LinearProgressIndicator(
                backgroundColor:
                    Theme.of(context).primaryColor.withOpacity(0.1),
                valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).primaryColor.withOpacity(1)),
                value: indicatorValue)),
        Text(
          value,
          style: TextStyle(
              fontSize: textFontsize,
              fontWeight: FontWeight.normal,
              fontFamily: "Segoe UI",
              color: Theme.of(context).primaryColor.withOpacity(0.6),
              decoration: TextDecoration.none),
        ),
      ],
    );
  }
}
