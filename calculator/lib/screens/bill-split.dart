import 'package:flutter/material.dart';

class BillSplitScreen extends StatefulWidget {
  const BillSplitScreen({super.key});

  @override
  State<BillSplitScreen> createState() {
    return _BillSplitScreenState();
  }
}

class _BillSplitScreenState extends State<BillSplitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text("Bill Share!")),
    );
    ;
  }
}
