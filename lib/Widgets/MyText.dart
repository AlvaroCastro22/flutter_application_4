import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Text(
      "Esto es un texto",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.4,
        wordSpacing: 4,
        backgroundColor: Colors.black,
        fontFamily: "MontserratAlternates",
        decoration: TextDecoration.underline,
      ),
      textAlign: TextAlign.center,
    );
  }
}
