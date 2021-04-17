import 'package:dartapp/views/dashboard/statistics/statistics_desktop.dart';
import 'package:dartapp/views/dashboard/statistics/statistics_mobile.dart';
import 'package:dartapp/views/dashboard/statistics/statistics_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Statistics extends StatelessWidget {
  const Statistics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: StatisticsMobile(),
      tablet: OrientationLayoutBuilder(portrait: (context) {
        return StatisticsTabletPotrait();
      }, landscape: (context) {
        return StatisticsTabletLandscape();
      }),
      desktop: StatisticsDesktop(),
    );
  }
}
