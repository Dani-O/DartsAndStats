/*
import 'package:dartapp/widgets/logo.dart';
import 'package:flutter/material.dart';


class TopbarMobile extends StatelessWidget {
  const TopbarMobile();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5),
        height: 50,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Logo(),
          Profilpicture(),
        ]));
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      child: Row(
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            child: LogoCircle(50, 50, 16),
          ),

          // Spacer(flex: 3),
          Container(
            padding: EdgeInsets.only(left: 10),
            //   flex: 21,
            width: 80,
            child: LogoText(12),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}

class Profilpicture extends StatelessWidget {
  const Profilpicture({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      height: 50,
      width: 50,
      decoration: new BoxDecoration(
        border: Border.all(width: 2, color: Color.fromARGB(255, 105, 150, 158)),
        shape: BoxShape.circle,
      ),
      child: Container(
        decoration: new BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage('images/profilpicture.png'),
          radius: 100,
        ),
      ),
    );
  }
}
*/
