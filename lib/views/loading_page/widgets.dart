import 'package:dartapp/views/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
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
