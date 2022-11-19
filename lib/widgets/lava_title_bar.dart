import 'package:flutter/material.dart';

class LavaTitleBar extends StatelessWidget {
  const LavaTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(238, 209, 172, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("high"),
            margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
          ),
          Text(
            "LAVA",
            style: TextStyle(fontSize: 48),
          ),
          Container(
            child: Text("4"),
            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
          )
        ],
      ),
    );
  }
}
