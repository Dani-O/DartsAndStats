import 'package:dartapp/utils/Theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'views/loading_page/loadingPage.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  if (kIsWeb) {
    ResponsiveSizingConfig.instance.setCustomBreakpoints(
      ScreenBreakpoints(desktop: 2, tablet: 1, watch: 0),
      customRefinedBreakpoints: RefinedBreakpoints(
        // Desktop
        desktopExtraLarge: 1600,
        desktopLarge: 1140,
        desktopNormal: 700,
        desktopSmall: 0,
        // Tablet
        tabletExtraLarge: 1500,
        tabletLarge: 1024,
        tabletNormal: 600,
        tabletSmall: 0,
        // Mobile
        mobileExtraLarge: 480,
        mobileLarge: 414,
        mobileNormal: 375,
        mobileSmall: 320,
      ),
    );
  } else {
    debugPrint("else");
    ResponsiveSizingConfig.instance.setCustomBreakpoints(
      ScreenBreakpoints(desktop: 1500, tablet: 600, watch: 0),
      customRefinedBreakpoints: RefinedBreakpoints(
        // Desktop
        desktopExtraLarge: 1500,
        desktopLarge: 1250,
        desktopNormal: 1020,
        desktopSmall: 0,
        // Tablet
        tabletExtraLarge: 1500,
        tabletLarge: 900,
        tabletNormal: 600,
        tabletSmall: 0,
        // Mobile
        mobileExtraLarge: 480,
        mobileLarge: 414,
        mobileNormal: 375,
        mobileSmall: 320,
      ),
    );
  }
  return runApp(
    DevicePreview(
      enabled: kIsWeb ? false : true, //!kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = kIsWeb ? false : false;
    //SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.amber, // navigation bar color
      statusBarColor: Colors.white, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icon color
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: basicTheme(),
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      home: LoadingPage(),
    );
  }
}
