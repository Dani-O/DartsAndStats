import 'package:dartapp/views/dashboard/dashboard_desktop.dart';
import 'package:dartapp/views/dashboard/dashboard_mobile.dart';
import 'package:dartapp/views/dashboard/dashboard_tablet.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DashboardMobile(),
      tablet: OrientationLayoutBuilder(
        portrait: (context) => RefinedLayoutBuilder(
            small: (context) => DashboardMobile(),
            normal: (context) => DashboardTabletPortrait(),
            large: (context) => DashboardDesktop()),
        landscape: (context) => RefinedLayoutBuilder(
            small: (context) => DashboardMobile(),
            normal: (context) => DashboardTabletLandscape(),
            large: (context) => DashboardDesktop()),
      ),
      desktop: RefinedLayoutBuilder(
        small: (context) => DashboardMobile(),
        normal: (context) => DashboardTabletPortrait(),
        large: (context) => DashboardTabletLandscape(),
        extraLarge: (context) => DashboardDesktop(),
      ),
    );
  }
}
