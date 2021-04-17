import 'package:dartapp/widgets/menubar/menubar_mobile.dart';
import 'package:dartapp/widgets/menubar/menubar_tablet.dart';
import 'package:dartapp/widgets/menubar/menubar_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MenuBarMobile(),
      tablet: OrientationLayoutBuilder(portrait: (context) {
        return MenuBarTablet();
      }, landscape: (context) {
        return MenuBarDesktop();
      }),
      desktop: MenuBarDesktop(),
    );
  }
}
