import 'package:dartapp/views/loading_page/widgets.dart';
import 'package:dartapp/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoadingPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("LoadingPage Mobile");
    return Stack(
      children: <Widget>[
        Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(
                    marginLeft: 0,
                    logoCircleFontsize: 40,
                    logoHeight: 80,
                    logoWidth: 80,
                    logoTextPaddingLeft: 20,
                    logoTextFontsize: 30)
              ],
            )),
        BuildButton(context: context),
      ],
    );
  }
}
