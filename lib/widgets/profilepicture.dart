import 'package:flutter/material.dart';

class Profilpicture extends StatelessWidget {
  final double marginRight;
  final double containerHeight;
  final double containerWidth;
  final double outerBorderWidth;
  final double innerBorderWidth;
  const Profilpicture(
      {this.marginRight,
      this.containerHeight,
      this.containerWidth,
      this.outerBorderWidth,
      this.innerBorderWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: marginRight),
      height: containerHeight,
      width: containerWidth,
      decoration: new BoxDecoration(
        border: Border.all(
            width: outerBorderWidth, color: Color.fromARGB(255, 105, 150, 158)),
        shape: BoxShape.circle,
      ),
      child: Container(
        decoration: new BoxDecoration(
          border: Border.all(width: innerBorderWidth, color: Colors.white),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage('images/profilpicture.png'),
          //  radius: 20,
        ),
      ),
    );
  }
}
