import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double marginLeft;
  final double logoHeight;
  final double logoWidth;
  final double logoCircleFontsize;
  final double logoTextPaddingLeft;
  final double logoTextFontsize;
  const Logo(
      {this.marginLeft,
      this.logoHeight,
      this.logoWidth,
      this.logoCircleFontsize,
      this.logoTextPaddingLeft,
      this.logoTextFontsize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: marginLeft),
      child: Row(
        children: <Widget>[
          LogoCircle(
              logoHeight: logoHeight,
              logoWidth: logoWidth,
              fontsize: logoCircleFontsize),
          Container(
            padding: EdgeInsets.only(left: logoTextPaddingLeft),
            child: LogoText(fontsize: logoTextFontsize),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}

class LogoCircle extends StatelessWidget {
  final double logoWidth;
  final double logoHeight;
  final double fontsize;
  const LogoCircle({this.logoHeight, this.logoWidth, this.fontsize});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: logoWidth,
      height: logoHeight,
      decoration: new BoxDecoration(
        color: Color.fromARGB(255, 73, 106, 112),
        shape: BoxShape.circle,
      ),
      child: Text(
        "DS",
        style: TextStyle(
            fontSize: fontsize,
            fontWeight: FontWeight.normal,
            fontFamily: "Segoe UI",
            color: Color.fromARGB(255, 255, 255, 255),
            decoration: TextDecoration.none),
        maxLines: 1,
      ),
      alignment: Alignment(0.0, 0.0),
    );
  }
}

class LogoText extends StatelessWidget {
  final double fontsize;
  const LogoText({this.fontsize});
  @override
  Widget build(BuildContext context) {
    return Text(
      'DARTS &\n STATS',
      style: TextStyle(
          fontSize: this.fontsize,
          fontWeight: FontWeight.bold,
          fontFamily: "Segoe UI",
          color: Color.fromARGB(255, 73, 106, 112),
          decoration: TextDecoration.none),
      textAlign: TextAlign.center,
      maxLines: 2,
    );
  }
}
