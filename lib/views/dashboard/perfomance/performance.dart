import 'package:dartapp/views/dashboard/perfomance/perfomance_desktop.dart';
import 'package:dartapp/views/dashboard/perfomance/perfomance_mobile.dart';
import 'package:dartapp/views/dashboard/perfomance/perfomance_tablet.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Perfomance extends StatelessWidget {
  const Perfomance();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PerfomanceMobile(),
      tablet: OrientationLayoutBuilder(portrait: (context) {
        return PerfomanceTabletPotrait();
      }, landscape: (context) {
        return PerfomanceTabletLandscape();
      }),
      desktop: PerfomanceDesktop(),
    );
  }
}
