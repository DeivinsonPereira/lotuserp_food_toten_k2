// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/common/components/custom_text_style.dart';
import 'package:lotus_food_totem/core/app_colors.dart';

class CustomHeaderPopup extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomHeaderPopup({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height * 0.07,
      color: CustomColors.backSlider,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: Get.size.height * 0.05,
          ),
          Text(
            text,
            style: CustomTextStyle.textButtonStyleWhite,
          ),
        ],
      ),
    );
  }
}
