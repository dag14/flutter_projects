import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.txt, {super.key});
  final String txt;
  @override
  Widget build(context) {
    return Text(style: TextStyle(color: Colors.white, fontSize: 28), txt);
  }
}
