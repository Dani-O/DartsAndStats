import 'package:dartapp/widgets/logo.dart';
import 'package:dartapp/widgets/profilepicture.dart';
import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  const Topbar();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5),
        height: 50,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Logo(
              marginLeft: 30,
              logoHeight: 40,
              logoWidth: 40,
              logoCircleFontsize: 16,
              logoTextPaddingLeft: 10,
              logoTextFontsize: 12),
          Profilpicture(
              marginRight: 30,
              containerHeight: 50,
              containerWidth: 50,
              outerBorderWidth: 2,
              innerBorderWidth: 2),
        ]));
  }
}
