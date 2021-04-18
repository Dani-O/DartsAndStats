import 'package:dartapp/views/dashboard/dashboard.dart';
import 'package:dartapp/widgets/logo.dart';
import 'package:flutter/material.dart';

class LoadingPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("Desktop");
    return Stack(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child:
                    LogoCircle(logoHeight: 160, logoWidth: 160, fontsize: 80),
                alignment: Alignment(0.9, 0),
                padding: EdgeInsets.symmetric(horizontal: 50),
              ),
              Container(
                child: LogoText(fontsize: 60),
                alignment: Alignment(-0.9, 0),
              ),
            ],
          ),
        ),
        buildButton(context),
      ],
    );
  }

  Container buildButton(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Color.fromRGBO(73, 106, 112, 1)),
        ),
        child: Text('Dashboard'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (Dashboard())),
          );
        },
      ),
      alignment: Alignment.bottomCenter,
    );
  }
}
