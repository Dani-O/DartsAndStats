import 'package:dartapp/widgets/profilepicture.dart';
import 'package:flutter/material.dart';
import 'logo.dart';

class MenuBar extends StatelessWidget {
  const MenuBar();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Logo(
              marginLeft: 0,
              logoHeight: 50,
              logoWidth: 50,
              logoCircleFontsize: 20,
              logoTextPaddingLeft: 10,
              logoTextFontsize: 15),
          SelectionMenu(),
          Profilpicture(
              marginRight: 0,
              containerHeight: 60,
              containerWidth: 60,
              outerBorderWidth: 2,
              innerBorderWidth: 2),
        ],
      ),
    );
  }
}

class SelectionMenu extends StatelessWidget {
  const SelectionMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MenuItem("Dashboard", true),
          MenuItem("Play Game", false),
          MenuItem("History", false),
          MenuItem("Player", false),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final bool visible;
  const MenuItem(this.text, this.visible);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 140,
      padding: EdgeInsets.only(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(text,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Segoe UI",
                    color: Color.fromRGBO(73, 106, 112, 1),
                    decoration: TextDecoration.none)),
          ),
          Visibility(
            visible: visible,
            maintainState: true,
            maintainAnimation: true,
            maintainSize: true,
            child: Container(
              padding: EdgeInsets.only(top: 5),
              width: 120,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(105, 150, 158, 1),
                    width: 4.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
