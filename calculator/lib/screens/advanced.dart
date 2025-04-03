import 'package:flutter/material.dart';

class AdvancedScreen extends StatefulWidget {
  const AdvancedScreen({super.key});

  @override
  State<AdvancedScreen> createState() {
    return _AdvancedState();
  }
}

class _AdvancedState extends State<AdvancedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Text("Advanced!")),
    );
  }
}
