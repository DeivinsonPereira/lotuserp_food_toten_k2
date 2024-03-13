import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/common/custom_container_resume.dart';
import 'package:lotus_food_totem/common/custom_header.dart';

import '../../common/custom_background_image.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackgroundImage(size: Get.size),
          Positioned(
            child: Column(children: [
              const CustomHeader(text: 'Formas de Pagamento'),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      
                    }),
              ),
              CustomContainerResume(size: Get.size),
            ]),
          )
        ],
      ),
    );
  }
}
