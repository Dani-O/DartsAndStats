/*
import 'package:flutter/material.dart';

class MenuBarMobile extends StatelessWidget {
  const MenuBarMobile();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        child: Column(children: [
          Divider(height: 1),
          SelectionMenu(),
        ]));
  }
}

class SelectionMenu extends StatelessWidget {
  const SelectionMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          MenuItem("Dashboard", true),
          MenuItem("Play Game", false),
          MenuItem("History", false),
          MenuItem("Player", false),
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
      // color: Colors.red,
      height: 59,
      width: 80,
      padding: EdgeInsets.only(right: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //   Spacer(flex: 3),
          Container(
            // flex: 5,
            // width: 100,
            // color: Colors.blue,
            alignment: Alignment.center,
            child: Text(text,
                style: TextStyle(
                    fontSize: 14,
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
              width: 80,
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
*/
