// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/common/components/custom_text_style.dart';

import 'package:lotus_food_totem/core/app_colors.dart';

class CustomHeader extends StatelessWidget {
  final String text;
  const CustomHeader({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.backSlider,
      width: Get.size.width,
      height: Get.size.height * 0.07,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(text, style: CustomTextStyle.textButtonStyleWhite)),
      ),
    );
  }
}
