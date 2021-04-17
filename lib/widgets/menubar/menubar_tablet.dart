import 'package:flutter/material.dart';

class MenuBarTablet extends StatelessWidget {
  const MenuBarTablet();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MenuItem("DashboarD", true),
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
      height: 79,
      width: 140,
      padding: EdgeInsets.only(right: 20),
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
