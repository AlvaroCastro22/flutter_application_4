import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Image(
      image: AssetImage("assets/img/view.png"),
      width: 400,
      height: 321,
      fit: BoxFit.scaleDown,
    );
  }
}
