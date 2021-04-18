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
      {this.mainContainerMarginLeft,
      this.mainContainerMarginRight,
      this.mainContainerMarginTop,
      this.mainContainerMarginBottom,
      this.logoHeight,
      this.logoWidth,
      this.logoCircleFontsize,
      this.logoTextPaddingLeft,
      this.logoTextFontsize,
      this.menuItemPaddingRight,
      this.menuFontsize,
      this.menuDividerWidth,
      this.menuDividerHeight,
      this.profilContainerHeight,
      this.profilContainerWidth,
      this.profilOuterBorderWidth,
      this.profilInnerBorderWidth});
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
                  itemPaddingRight: menuItemPaddingRight,
                  fontsize: menuFontsize,
                  dividerHeight: menuDividerHeight,
                  dividerWidth: menuDividerWidth),
              MenuItem(
                  text: "Play Game",
                  visible: false,
                  itemPaddingRight: menuItemPaddingRight,
                  fontsize: menuFontsize,
                  dividerHeight: menuDividerHeight,
                  dividerWidth: menuDividerWidth),
              MenuItem(
                  text: "History",
                  visible: false,
                  itemPaddingRight: menuItemPaddingRight,
                  fontsize: menuFontsize,
                  dividerHeight: menuDividerHeight,
                  dividerWidth: menuDividerWidth),
              MenuItem(
                  text: "Player",
                  visible: false,
                  itemPaddingRight: menuItemPaddingRight,
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
  final double itemPaddingRight;
  final double fontsize;
  final double dividerWidth;
  final double dividerHeight;
  const MenuItem({
    this.text,
    this.visible,
    this.itemPaddingRight,
    this.fontsize,
    this.dividerWidth,
    this.dividerHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: itemPaddingRight),
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
