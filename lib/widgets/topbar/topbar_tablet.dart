import 'package:flutter/material.dart';
import '../logo.dart';

class TopbarTablet extends StatelessWidget {
  const TopbarTablet();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5),
        height: 80,
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
      margin: EdgeInsets.only(left: 50),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            child: LogoCircle(100, 100, 20),
          ),

          // Spacer(flex: 3),
          Container(
            padding: EdgeInsets.only(left: 10),
            //   flex: 21,
            width: 80,
            child: LogoText(15),
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
      margin: EdgeInsets.only(right: 50),
      height: 60,
      width: 60,
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
