import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  final double titleFontsize;
  final double containerHeight;
  final double containerWidth;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double borderRadius;
  final double textFontsize;
  final double iconSize;
  const TitleRow(
      {this.titleFontsize,
      this.containerHeight,
      this.containerWidth,
      this.paddingLeft,
      this.paddingRight,
      this.paddingTop,
      this.borderRadius,
      this.textFontsize,
      this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          padding: EdgeInsets.only(left: paddingLeft, top: paddingTop),
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
          this.containerHeight,
          this.containerWidth,
          this.paddingRight,
          this.paddingTop,
          this.borderRadius,
          this.textFontsize,
          this.iconSize)
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
        /*
        lineTouchData: LineTouchData(
          
          
          touchTooltipData: LineTouchTooltipData(
              maxContentWidth: 100,
              tooltipBgColor: Colors.orange,
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((LineBarSpot touchedSpot) {
                  final textStyle = TextStyle(
                    color: touchedSpot.bar.colors[0],
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  );
                  return LineTooltipItem(
                      '${touchedSpot.x}, ${touchedSpot.y.toStringAsFixed(2)}',
                      textStyle);
                }).toList();
              }),
          handleBuiltInTouches: true,
          getTouchLineStart: (data, index) => 0,
        ),
        */

        minX: -1,
        maxX: 14,
        minY: 0,
        maxY: 10,
        titlesData: LineTitles.getTitleData(),
        gridData: FlGridData(
          show: false,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
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
