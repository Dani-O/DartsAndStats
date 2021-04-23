import 'package:dartapp/views/loading_page/loading_page_desktop.dart';
import 'package:dartapp/views/loading_page/loading_page_mobile.dart';
import 'package:dartapp/views/loading_page/loading_page_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/foundation.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage();
  @override
  Widget build(BuildContext context) {
    //debugPrint(MediaQuery.of(context).orientation.toString());
    debugPrint("Width: " + MediaQuery.of(context).size.width.toString());
    debugPrint("Height: " + MediaQuery.of(context).size.height.toString());
    debugPrint(
        "DeviceRatio: " + MediaQuery.of(context).devicePixelRatio.toString());
    debugPrint("Shortest Side: " +
        MediaQuery.of(context).size.shortestSide.toString());

    return ScreenTypeLayout(
      mobile: LoadingPageMobile(),
      tablet: OrientationLayoutBuilder(
        portrait: (context) => RefinedLayoutBuilder(
            small: (context) => LoadingPageMobile(),
            normal: (context) => LoadingPageTabletLandscape(),
            large: (context) => LoadingPageDesktop()),
        landscape: (context) => RefinedLayoutBuilder(
            small: (context) => LoadingPageMobile(),
            normal: (context) => LoadingPageTabletLandscape(),
            large: (context) => LoadingPageDesktop()),
      ),
      desktop: RefinedLayoutBuilder(
        small: (context) => LoadingPageMobile(),
        normal: (context) => LoadingPageTabletLandscape(),
        large: (context) => LoadingPageDesktop(),
        extraLarge: (context) => LoadingPageDesktop(),
      ),
    );
  }
}
