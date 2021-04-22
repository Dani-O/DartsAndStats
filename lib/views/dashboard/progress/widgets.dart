import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  final double titleFontsize;
  final double buttonHeight;
  final double buttonWidth;
  final double buttonPaddingLeft;
  final double buttonPaddingRight;
  final double buttonPaddingTop;
  final double buttonBorderRadius;
  final double buttonTextFontsize;
  final double buttonIconSize;
  const TitleRow(
      {@required this.titleFontsize,
      @required this.buttonHeight,
      @required this.buttonWidth,
      @required this.buttonPaddingLeft,
      @required this.buttonPaddingRight,
      @required this.buttonPaddingTop,
      @required this.buttonBorderRadius,
      @required this.buttonTextFontsize,
      @required this.buttonIconSize});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(
                  left: buttonPaddingLeft, top: buttonPaddingTop),
              child: Text(
                "PROGRESS",
                style: TextStyle(
                    fontSize: titleFontsize,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Segoe UI",
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.none),
              )),
          SelectionButton(
              this.buttonHeight,
              this.buttonWidth,
              this.buttonPaddingRight,
              this.buttonPaddingTop,
              this.buttonBorderRadius,
              this.buttonTextFontsize,
              this.buttonIconSize)
        ]);
  }
}

class SelectionButton extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final double paddingRight;
  final double paddingTop;
  final double borderRadius;
  final double textFontsize;
  final double iconSize;

  const SelectionButton(
      this.containerHeight,
      this.containerWidth,
      this.paddingRight,
      this.paddingTop,
      this.borderRadius,
      this.textFontsize,
      this.iconSize);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: paddingRight, top: paddingTop),
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Week",
              style: TextStyle(
                  fontSize: textFontsize,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Segoe UI",
                  color: Theme.of(context).primaryColor,
                  decoration: TextDecoration.none),
            ),
            Icon(
              Icons.expand_more,
              color: Theme.of(context).primaryColor,
              size: iconSize,
            ),
          ],
        ));
  }
}

class Chart extends StatelessWidget {
  const Chart({
    Key key,
    @required this.gradientColors,
  }) : super(key: key);

  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          getTouchedSpotIndicator:
              (LineChartBarData barData, List<int> spotIndexes) {
            return spotIndexes.map((spotIndex) {
              final FlSpot spot = barData.spots[spotIndex];
              if (spot.x == 0 || spot.x == 6) {
                return null;
              }
              return TouchedSpotIndicatorData(
                FlLine(
                    color: Color.fromARGB(255, 205, 212, 213), strokeWidth: 4),
                FlDotData(getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                      radius: 10,
                      color: Color.fromRGBO(73, 106, 112, 1),
                      strokeWidth: 3,
                      strokeColor: Colors.white);
                }),
              );
            }).toList();
          },
          touchTooltipData: LineTouchTooltipData(
              maxContentWidth: 100,
              tooltipMargin: 20,
              tooltipRoundedRadius: 10,
              tooltipBgColor: Colors.white,
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((LineBarSpot touchedSpot) {
                  final textStyle = TextStyle(
                    color: Color.fromRGBO(73, 106, 112, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  );
                  return LineTooltipItem(
                      '${touchedSpot.y.toStringAsFixed(2)}', textStyle);
                }).toList();
              }),
          handleBuiltInTouches: true,
          getTouchLineStart: (data, index) => 0,
        ),
        minX: -1,
        maxX: 14,
        minY: 0,
        maxY: 10,
        titlesData: LineTitles.getTitleData(),
        gridData: FlGridData(
          show: false,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Colors.red,
              strokeWidth: 1,
            );
          },
          drawVerticalLine: false,
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1,
            );
          },
        ),
        borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 1),
        ),
        lineBarsData: [
          LineChartBarData(
            dotData: FlDotData(
              show: false,
            ),
            spots: [
              FlSpot(0, 3),
              FlSpot(1.5, 2),
              FlSpot(3.5, 5),
              FlSpot(4.5, 2.5),
              FlSpot(6.4, 8),
              FlSpot(8.2, 3),
              FlSpot(11, 8),
              FlSpot(13, 6),
            ],
            isCurved: true,
            colors: gradientColors,
            barWidth: 3,
            // dotData: FlDotData(show: false),
            belowBarData: BarAreaData(
              show: false,
              colors: gradientColors
                  .map((color) => color.withOpacity(0.1))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 35,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'MO';
              case 3:
                return 'TU';
              case 5:
                return 'WE';
              case 7:
                return 'TH';
              case 9:
                return 'FR';
              case 11:
                return 'SA';
              case 13:
                return 'SO';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: false,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 35,
          margin: 12,
        ),
      );
}
