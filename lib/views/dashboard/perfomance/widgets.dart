import 'package:flutter/material.dart';

class PerfomanceTitle extends StatelessWidget {
  final EdgeInsets edgeInsets;
  final double fontsize;
  const PerfomanceTitle({this.edgeInsets, this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: edgeInsets,
          child: Text(
            "PERFORMANCE",
            style: TextStyle(
                fontSize: fontsize,
                fontWeight: FontWeight.bold,
                fontFamily: "Segoe UI",
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
        ),
      ],
    );
  }
}

class VarianceInCmCircle extends StatelessWidget {
  final double containerWidth;
  final double borderWidth;
  final String varianceValue;
  final double sizeboxHeight;
  final double valueFontsize;
  final double descriptionFontsize;
  const VarianceInCmCircle(
      {this.containerWidth,
      this.borderWidth,
      this.varianceValue,
      this.valueFontsize,
      this.sizeboxHeight,
      this.descriptionFontsize});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: containerWidth,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: borderWidth,
            ),
            shape: BoxShape.circle),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              varianceValue,
              style: TextStyle(
                  fontSize: valueFontsize,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Segoe UI",
                  color: Colors.white,
                  decoration: TextDecoration.none),
            ),
            SizedBox(height: sizeboxHeight),
            Text(
              "variance in cm",
              style: TextStyle(
                fontSize: descriptionFontsize,
                fontWeight: FontWeight.normal,
                fontFamily: "Segoe UI",
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            )
          ],
        ));
  }
}

class DetailedVariance extends StatelessWidget {
  final String value;
  final double valueFontsize;
  final double sizeboxHeight;
  final String description;
  final double descriptionFontsize;
  final double containerWidth;
  final double containerBorderWidth;

  const DetailedVariance(
      {this.value,
      this.valueFontsize,
      this.sizeboxHeight,
      this.description,
      this.descriptionFontsize,
      this.containerWidth,
      this.containerBorderWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: valueFontsize,
            fontWeight: FontWeight.normal,
            fontFamily: "Segoe UI",
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
        SizedBox(height: sizeboxHeight),
        Text(
          description,
          style: TextStyle(
            fontSize: descriptionFontsize,
            fontWeight: FontWeight.normal,
            fontFamily: "Segoe UI",
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
        SizedBox(height: sizeboxHeight),
        Container(
          width: containerWidth,
          decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(105, 150, 158, 0.77),
                width: containerBorderWidth,
              ),
              shape: BoxShape.rectangle),
        ),
      ],
    );
  }
}

class DetailedVarianceHorizontal extends StatelessWidget {
  final String value;
  final double valueFontsize;
  final double sizeboxWidth;
  final String description;
  final double descriptionFontsize;
  final double containerWidth;
  final double containerBorderWidth;

  const DetailedVarianceHorizontal(
      this.value,
      this.valueFontsize,
      this.sizeboxWidth,
      this.description,
      this.descriptionFontsize,
      this.containerWidth,
      this.containerBorderWidth);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: valueFontsize,
                fontWeight: FontWeight.normal,
                fontFamily: "Segoe UI",
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(width: sizeboxWidth),
            Text(
              description,
              style: TextStyle(
                fontSize: descriptionFontsize,
                fontWeight: FontWeight.normal,
                fontFamily: "Segoe UI",
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          width: containerWidth,
          decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(105, 150, 158, 0.77),
                width: containerBorderWidth,
              ),
              shape: BoxShape.rectangle),
        ),
      ],
    );
  }
}
