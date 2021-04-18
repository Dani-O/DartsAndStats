import 'package:dartapp/widgets/menubar/widgets.dart';
import 'package:flutter/material.dart';

class MenuBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuBarWidget(
        mainContainerMarginLeft: 70,
        mainContainerMarginRight: 70,
        mainContainerMarginTop: 10,
        mainContainerMarginBottom: 10,
        logoHeight: 50,
        logoWidth: 50,
        logoCircleFontsize: 20,
        logoTextPaddingLeft: 10,
        logoTextFontsize: 15,
        menuItemPaddingRight: 20,
        menuFontsize: 18,
        menuDividerWidth: 120,
        menuDividerHeight: 4,
        profilContainerHeight: 60,
        profilContainerWidth: 60,
        profilOuterBorderWidth: 2,
        profilInnerBorderWidth: 2);
  }
}
