import 'package:dartapp/widgets/topbar/topbar_mobile.dart';
import 'package:dartapp/widgets/topbar/topbar_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Topbar extends StatelessWidget {
  const Topbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: TopbarMobile(),
      tablet: TopbarTablet(),
    );
  }
}
