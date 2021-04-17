import 'package:dartapp/views/dashboard/dashboard.dart';
import 'package:dartapp/widgets/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("Mobile");
    return Stack(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: LogoCircle(80, 80, 40),
                alignment: Alignment(0.9, 0),
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
              Container(
                child: LogoText(30),
                alignment: Alignment(-0.9, 0),
              ),
            ],
          ),
        ),
        buildButton(context),
      ],
    );
  }
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
