import 'package:dartapp/views/loading_page/widgets.dart';
import 'package:dartapp/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoadingPageTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    debugPrint("TabletLandscape");
    return Stack(
      children: <Widget>[
        Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(
                    marginLeft: 0,
                    logoCircleFontsize: 80,
                    logoHeight: 160,
                    logoWidth: 160,
                    logoTextPaddingLeft: 50,
                    logoTextFontsize: 60)
              ],
            )),
        BuildButton(context: context),
      ],
    );
  }
}
