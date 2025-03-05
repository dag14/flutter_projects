import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(context) {
    return Column(
      children: [
        Image.asset('assets/images/quiz-logo.png'),
        Text("Learn Flutter the fun way!"),
        OutlinedButton(onPressed: () {}, child: Text("data")),
      ],
    );
  }
}
