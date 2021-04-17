import 'package:flutter/material.dart';
import '../logo.dart';

class MenuBarDesktop extends StatelessWidget {
  const MenuBarDesktop();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Logo(),
          SelectionMenu(),
          Profilpicture(),
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //flex: 150,
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

class SelectionMenu extends StatelessWidget {
  const SelectionMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: 800,
      //  height: 100,
      //flex: 700,
      // padding: EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //  crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Spacer(flex: 1),
          MenuItem("Dashboard", true),
          MenuItem("Play Game", false),
          MenuItem("History", false),
          MenuItem("Player", false),
          //  Spacer(flex: 1),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final bool visible;
  const MenuItem(this.text, this.visible);
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.bottomCenter,
      //flex: 3,
      height: 100,
      width: 140,
      padding: EdgeInsets.only(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //   Spacer(flex: 3),
          Container(
            // flex: 5,
            // width: 100,
            alignment: Alignment.center,
            child: Text(text,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Segoe UI",
                    color: Color.fromRGBO(73, 106, 112, 1),
                    decoration: TextDecoration.none)),
            // minFontSize: 10),
          ),
          // Spacer(flex: 1),
          Visibility(
            visible: visible,
            maintainState: true,
            maintainAnimation: true,
            maintainSize: true,
            //   child: Expanded(
            //  flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 5),
              width: 120,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(105, 150, 158, 1),
                    width: 4.0,
                  ),
                ),
              ),
            ),
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
