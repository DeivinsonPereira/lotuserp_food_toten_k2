// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/common/custom_elevated_button.dart';
import 'package:lotus_food_totem/common/custom_header.dart';
import 'package:lotus_food_totem/services/carrinho_is_empty.dart';
import 'package:lotus_food_totem/services/get_total_value_menu.dart';

import '../../collections/grupo.dart';
import '../../common/custom_background_image.dart';
import '../../common/components/custom_text_style.dart';
import '../../core/app_colors.dart';
import '../../services/dependencies.dart';
import '../complement/complement_page.dart';
import 'components/card_group_menu.dart';
import 'components/card_product_menu.dart';

class MenuPage extends StatelessWidget {
  final bool comerAqui;
  const MenuPage({super.key, required this.comerAqui});

  @override
  Widget build(BuildContext context) {
    var menuController = Dependencies.menuController();
    Size size = Get.size;

    // Constrói a lista de grupos
    Widget _buildListViewGrupos() {
      if (menuController.grupos.isNotEmpty) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: menuController.grupos.length,
          itemBuilder: (context, index) {
            grupo grupoSelecionado = menuController.grupos[index];
            return GestureDetector(
              onTap: () {
                menuController.updateGrupoSelecionado(index);
                menuController.updateProdutosEscolhidos();
              },
              child: CardsMenu(
                size: size,
                fileImage: grupoSelecionado.file_imagem,
                grupoDescricao: grupoSelecionado.grupo_descricao,
              ),
            );
          },
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    }

    // Constrói a linha dos grupos
    Widget _buildLineGroup() {
      return SizedBox(
        width: size.width * 0.97,
        height: size.height * 0.1,
        child: _buildListViewGrupos(),
      );
    }

    // Constrói o grid dos produtos
    Widget _buildGridProducts() {
      return Obx(
        () => GridView.builder(
          itemCount: menuController.produtosEscolhidos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 3 / 4,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            var produtoSelecionado = menuController.produtosEscolhidos[index];
            return GestureDetector(
              onTap: () {
                menuController.updateComplementosEscolhidos(produtoSelecionado);
                menuController.clearComplementoSelecionado();
                menuController.clearInformationTextController();
                Get.dialog(
                  barrierDismissible: false,
                  ComplementPage(
                    produtoEscolhido: produtoSelecionado,
                  ),
                );
              },
              child: CardProductMenu(
                  size: size, produtoEscolhido: produtoSelecionado),
            );
          },
        ),
      );
    }

    // Constrói o resumo
    Widget _buildContainerResumo() {
      return Container(
        width: size.width,
        height: size.height * 0.06,
        decoration: const BoxDecoration(
          color: CustomColors.backSlider,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'RESUMO DO SEU PEDIDO',
                    style: CustomTextStyle.textButtonStyleWhite,
                  ),
                  Obx(
                    () => Text(
                      'R\$ ${GetTotalValueMenu().getValue()}',
                      style: CustomTextStyle.textButtonStyleWhite,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(children: [
                Text(
                  'Para: ${menuController.getMealOption()}',
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ]),
            )
          ],
        ),
      );
    }

    // Constrói o botão de voltar
    Widget _buildBackButton() {
      return SizedBox(
        height: 100,
        child: CustomElevatedButton(
            text: 'Cancelar Pedido',
            function: () {
              Get.back();
              Get.back();
              menuController.clearAll();
            },
            radious: 0,
            colorButton: Colors.red,
            styleText: CustomTextStyle.textButtonStyleWhite),
      );
    }

    // Constrói o botão de continuar
    Widget _buildContinueButton() {
      return SizedBox(
        height: 100,
        child: CustomElevatedButton(
            text: 'Finalizar Pedido',
            function: () {
              CarrinhoIsEmpty().verifyCarrinho(context);
            },
            radious: 0,
            colorButton: CustomColors.confirmButtonColor,
            styleText: CustomTextStyle.textButtonStyle),
      );
    }

    // Constrói o corpo da página
    return Scaffold(
      body: Stack(
        children: [
          CustomBackgroundImage.getBackgroundImage(size),
          Positioned(
            child: SizedBox(
              width: size.width,
              child: Column(
                children: [
                  const CustomHeader(text: 'Qual o seu pedido?'),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: _buildLineGroup(),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Divider(),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: _buildGridProducts(),
                    ),
                  ),
                  _buildContainerResumo(),
                  Row(
                    children: [
                      Expanded(child: _buildBackButton()),
                      Expanded(child: _buildContinueButton()),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
