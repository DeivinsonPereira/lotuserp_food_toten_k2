// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Function() function;
  final double radious;
  final Color colorButton;
  final TextStyle styleText;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.function,
    required this.radious,
    required this.colorButton,
    required this.styleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: colorButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radious),
          )),
      onPressed: function,
      child: Text(
        text,
        style: styleText,
      ),
    );
  }
}
