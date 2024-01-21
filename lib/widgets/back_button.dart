import 'package:flutter/material.dart';

class Backbutton extends StatelessWidget {
  const Backbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.only(
        top: 16,
        left: 16,
      ),
      child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded)),
    );
  }
}
