import 'package:dartapp/widgets/profilepicture.dart';
import 'package:flutter/material.dart';
import '../logo.dart';

class MenuBarWidget extends StatelessWidget {
  final double mainContainerMarginLeft;
  final double mainContainerMarginRight;
  final double mainContainerMarginTop;
  final double mainContainerMarginBottom;

  final double logoHeight;
  final double logoWidth;
  final double logoCircleFontsize;
  final double logoTextPaddingLeft;
  final double logoTextFontsize;

  final double menuItemPaddingRight;
  final double menuFontsize;
  final double menuDividerWidth;
  final double menuDividerHeight;

  final double profilContainerHeight;
  final double profilContainerWidth;
  final double profilOuterBorderWidth;
  final double profilInnerBorderWidth;

  const MenuBarWidget(
      {@required this.mainContainerMarginLeft,
      @required this.mainContainerMarginRight,
      @required this.mainContainerMarginTop,
      @required this.mainContainerMarginBottom,
      @required this.logoHeight,
      @required this.logoWidth,
      @required this.logoCircleFontsize,
      @required this.logoTextPaddingLeft,
      @required this.logoTextFontsize,
      @required this.menuItemPaddingRight,
      @required this.menuFontsize,
      @required this.menuDividerWidth,
      @required this.menuDividerHeight,
      @required this.profilContainerHeight,
      @required this.profilContainerWidth,
      @required this.profilOuterBorderWidth,
      @required this.profilInnerBorderWidth});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: mainContainerMarginLeft,
          top: mainContainerMarginTop,
          right: mainContainerMarginRight,
          bottom: mainContainerMarginBottom),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Logo(
              marginLeft: 0,
              logoHeight: logoHeight,
              logoWidth: logoWidth,
              logoCircleFontsize: logoCircleFontsize,
              logoTextPaddingLeft: logoTextPaddingLeft,
              logoTextFontsize: logoTextFontsize),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MenuItem(
                  text: "Dashboard",
                  visible: true,
                  fontsize: menuFontsize,
                  dividerHeight: menuDividerHeight,
                  dividerWidth: menuDividerWidth),
              SizedBox(width: menuItemPaddingRight),
              MenuItem(
                  text: "Play Game",
                  visible: false,
                  fontsize: menuFontsize,
                  dividerHeight: menuDividerHeight,
                  dividerWidth: menuDividerWidth),
              SizedBox(width: menuItemPaddingRight),
              MenuItem(
                  text: "History",
                  visible: false,
                  fontsize: menuFontsize,
                  dividerHeight: menuDividerHeight,
                  dividerWidth: menuDividerWidth),
              SizedBox(width: menuItemPaddingRight),
              MenuItem(
                  text: "Player",
                  visible: false,
                  fontsize: menuFontsize,
                  dividerHeight: menuDividerHeight,
                  dividerWidth: menuDividerWidth),
            ],
          ),
          Profilpicture(
              marginRight: 0,
              containerHeight: profilContainerHeight,
              containerWidth: profilContainerWidth,
              outerBorderWidth: profilOuterBorderWidth,
              innerBorderWidth: profilInnerBorderWidth),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final bool visible;
  final double fontsize;
  final double dividerWidth;
  final double dividerHeight;
  const MenuItem({
    @required this.text,
    @required this.visible,
    @required this.fontsize,
    @required this.dividerWidth,
    @required this.dividerHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(text,
                style: TextStyle(
                    fontSize: fontsize,
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
              width: dividerWidth,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(105, 150, 158, 1),
                    width: dividerHeight,
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
