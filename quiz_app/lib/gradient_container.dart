import 'package:flutter/material.dart';
import 'package:quiz_app/homescreen.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});
  final Color firstColor;
  final Color secondColor;
  @override
  Widget build(context) {
    return (Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [firstColor, secondColor]),
      ),
      child: Center(child: Homescreen()),
    ));
  }
}
