import 'package:dartapp/views/dashboard/dashboard_desktop.dart';
import 'package:dartapp/views/dashboard/dashboard_mobile.dart';
import 'package:dartapp/views/dashboard/dashboard_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    SystemChrome.setEnabledSystemUIOverlays([]);
    //SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    //

    return ScreenTypeLayout(
      mobile: DashboardMobile(),
      tablet: OrientationLayoutBuilder(portrait: (context) {
        return DashboardTabletPotrait();
      }, landscape: (context) {
        return DashboardTabletLandscape();
      }),
      desktop: DashboardDesktop(),
    );
  }
}
