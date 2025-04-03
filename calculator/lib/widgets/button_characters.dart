import 'package:flutter/material.dart';

class ButtonCharacters extends StatelessWidget {
  const ButtonCharacters({super.key, required this.buttonContent});
  final dynamic buttonContent;

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(4),
        // width: screenWidth / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          color: Colors.white,
        ),
        child: Center(
          child:
              buttonContent is IconData
                  ? Icon(buttonContent, color: Colors.black, size: 30)
                  : Text(
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    "$buttonContent",
                  ),
        ),
      ),
    );
  }
}
