import 'package:dartapp/views/dashboard/dashboard_desktop.dart';
import 'package:dartapp/views/dashboard/dashboard_mobile.dart';
import 'package:dartapp/views/dashboard/dashboard_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    return ScreenTypeLayout(
      mobile: DashboardMobile(),
      tablet: DashboardTabletLandscape(),
      desktop: DashboardDesktop(),
    );
  }
}
