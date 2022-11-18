import 'package:flutter/material.dart';

class LavaTitleBar extends StatelessWidget {
  const LavaTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("LAVA", style: TextStyle(
          fontSize: 48 ))],
      ),
    );
  }
}