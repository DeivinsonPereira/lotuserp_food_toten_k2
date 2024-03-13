// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
import 'package:flutter/material.dart';
import '../services/dependencies.dart';

class CustomBackgroundImage extends StatelessWidget {
  final Size size;
  const CustomBackgroundImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sliderController = Dependencies.sliderController();
    
    return SizedBox(
      width: size.width * 1.1,
      height: size.height * 1.1,
      child: Image.file(
        File(sliderController.backgroundImage.value),
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

