import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class LogoCircle extends StatelessWidget {
  final double width;
  final double height;
  final double fontsize;
  const LogoCircle(this.height, this.width, this.fontsize);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: new BoxDecoration(
        color: Color.fromARGB(255, 73, 106, 112),
        shape: BoxShape.circle,
      ),
      child: AutoSizeText("DS",
          style: TextStyle(
              fontSize: fontsize,
              fontWeight: FontWeight.normal,
              fontFamily: "Segoe UI",
              color: Color.fromARGB(255, 255, 255, 255),
              decoration: TextDecoration.none),
          maxLines: 1,
          minFontSize: 20,
          maxFontSize: 100),
      alignment: Alignment(0.0, 0.0),
    );
  }
}

class LogoText extends StatelessWidget {
  final double fontsize;
  const LogoText(this.fontsize);
  @override
  Widget build(BuildContext context) {
    return AutoSizeText('DARTS &\n STATS',
        style: TextStyle(
            fontSize: this.fontsize,
            fontWeight: FontWeight.bold,
            fontFamily: "Segoe UI",
            color: Color.fromARGB(255, 73, 106, 112),
            decoration: TextDecoration.none),
        textAlign: TextAlign.center,
        maxLines: 2,
        minFontSize: 8,
        maxFontSize: 100);
  }
}
