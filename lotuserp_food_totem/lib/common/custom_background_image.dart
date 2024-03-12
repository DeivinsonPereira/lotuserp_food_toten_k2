import 'package:flutter/material.dart';

abstract class CustomBackgroundImage {
  static Widget getBackgroundImage(Size size) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Image.asset('assets/images/fundo.png'),
    );
  }
}
