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
    debugPrint(MediaQuery.of(context).size.width.toString());
    debugPrint(MediaQuery.of(context).size.height.toString());
    debugPrint(MediaQuery.of(context).devicePixelRatio.toString());
    return ScreenTypeLayout(
      mobile: LoadingPageMobile(),
      tablet: LoadingPageTabletLandscape(),
      desktop: LoadingPageDesktop(),
    );
  }
}
