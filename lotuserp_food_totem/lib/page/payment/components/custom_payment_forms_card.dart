// ignore_for_file: public_member_api_docs, sort_constructors_first, no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';

import 'package:lotus_food_totem/common/components/custom_text_style.dart';
import 'package:lotus_food_totem/services/condition_icon.dart';

class CustomPaymentFormsCard extends StatelessWidget {
  final Map<String, dynamic> pagamentoForma;
  const CustomPaymentFormsCard({
    Key? key,
    required this.pagamentoForma,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildPaymentDescription() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          pagamentoForma['forma'],
          style: CustomTextStyle.textButtonStyle,
        ),
      );
    }

    return GestureDetector(
      onTap: () {},
      child: Material(
        color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConditionIcon().getIcon(pagamentoForma),
            _buildPaymentDescription(),
          ],
        ),
      ),
    );
  }
}
