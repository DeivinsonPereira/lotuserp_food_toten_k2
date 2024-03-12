// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/common/components/menu_variables.dart';
import 'package:lotus_food_totem/page/menu/menu_page.dart';
import 'package:lotus_food_totem/services/dependencies.dart';

import '../../core/app_colors.dart';

class OptionPage extends StatelessWidget {
  const OptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    var menuController = Dependencies.menuController();

    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: CustomColors.backSlider,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                    ),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/logoVistaBranco.png',
                        width: 600, height: 500, scale: 0.8),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.660,
                decoration: const BoxDecoration(
                  color: CustomColors.backSlider,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.655,
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    const Expanded(
                      child: Text(
                        'O que deseja fazer hoje?',
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Botão --> COMER AQUI
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 4),
                            child: SizedBox(
                              height: 80,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Colors.amberAccent),
                                onPressed: () {
                                  menuController
                                      .setMealOption(MenuVariables.COMER_AQUI);
                                  menuController.updateProdutosEscolhidos();
                                  Get.to(() => const MenuPage(comerAqui: true), transition: Transition.rightToLeft);
                                },
                                child: const Text(
                                  'Comer aqui',
                                  style: TextStyle(
                                      fontSize: 50, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //BOTÃO --> LEVAR
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4, right: 8),
                            child: SizedBox(
                              height: 80,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Colors.amberAccent),
                                onPressed: () {
                                  menuController
                                      .setMealOption(MenuVariables.LEVAR);
                                  Get.to(
                                      () => const MenuPage(comerAqui: false));
                                },
                                child: const Text(
                                  'Levar',
                                  style: TextStyle(
                                      fontSize: 50, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
