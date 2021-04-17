import 'package:dartapp/views/dashboard/progress/progress_desktop.dart';
import 'package:dartapp/views/dashboard/progress/progress_mobile.dart';
import 'package:dartapp/views/dashboard/progress/progress_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Progress extends StatelessWidget {
  const Progress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProgressMobile(),
      tablet: OrientationLayoutBuilder(portrait: (context) {
        return ProgressTabletPotrait();
      }, landscape: (context) {
        return ProgressTabletLandscape();
      }),
      desktop: ProgressDesktop(),
    );
  }
}
