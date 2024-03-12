// ignore_for_file: public_member_api_docs, sort_constructors_first, no_leading_underscores_for_local_identifiers
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/common/components/custom_text_style.dart';
import 'package:lotus_food_totem/core/app_colors.dart';

import 'package:lotus_food_totem/services/format_numbers.dart';

import '../../../services/get_total_per_item.dart';
import '../../../services/list_complements_cart_shop.dart';
import '../../../shared/components/endpoints.dart';

class CustomCardCartShopping extends StatelessWidget {
  final Map<String, dynamic> itemEscolhido;
  const CustomCardCartShopping({
    Key? key,
    required this.itemEscolhido,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Constrói a imagem do card
    Widget _buildCardImage() {
      return SizedBox(
        height: 150,
        width: 150,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: CachedNetworkImage(
            imageUrl: Endpoints.endpointSearchImageProduct(
                itemEscolhido['produto'].file_imagem),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    // Constrói o botão de editar
    Widget _buildIconEdit() {
      return IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.edit,
          color: CustomColors.backSlider,
          size: 30,
        ),
      );
    }

    // Constrói o botão de remover
    Widget _buildIconRemove() {
      return IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.delete_rounded,
          color: Colors.red,
          size: 30,
        ),
      );
    }

    // Constrói os icones
    Widget _buildIcons() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildIconRemove(),
          _buildIconEdit(),
        ],
      );
    }

    // Constrói a descrição do Produto no card
    Widget _buildNomeProductAndPrice() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            itemEscolhido['produto'].produto_descricao,
            style: CustomTextStyle.textPriceBlackSmall,
          ),
          Text(
            'R\$ ${FormatNumbers.formatNumbertoString(itemEscolhido['produto'].pvenda)}',
            style: CustomTextStyle.textPriceBlackSmall,
          ),
        ],
      );
    }

    // Constrói o nome e preço dos complementos
    Widget _buildNameComplementsAndPrice() {
      List<dynamic> listComplementos = itemEscolhido['complementos'];
      if (listComplementos.isNotEmpty) {
        return ListComplementsCartShop().listComplements(listComplementos);
      } else {
        return const Text('');
      }
    }

    // Constrói as informações adicionais
    Widget _buildInfo() {
      if (itemEscolhido['info'].isNotEmpty) {
        return Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              const Text('Info: ', style: CustomTextStyle.textPriceBlackSmall),
              Text(
                itemEscolhido['info'],
              ),
            ],
          ),
        );
      } else {
        return const Text('');
      }
    }

    // Constrói o total
    Widget _buildTotal() {
      return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          'Total: ',
          style: CustomTextStyle.textPriceBlackSmall,
        ),
        Text(
          'R\$ ${GetTotalPerItem().getTotal(itemEscolhido)}',
          style: CustomTextStyle.textPriceBlackSmall,
        ),
      ]);
    }

    // Constrói a estrudura do conteúdo dentro do card
    Widget _buildStrutreWidgets() {
      return Row(
        children: [
          _buildCardImage(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: Get.size.width * 0.75,
              child: Column(children: [
                _buildIcons(),
                _buildNomeProductAndPrice(),
                _buildNameComplementsAndPrice(),
                _buildInfo(),
                _buildTotal(),
              ]),
            ),
          )
        ],
      );
    }

    // Construir o corpo do card
    Widget _buildCardBody() {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: _buildStrutreWidgets(),
      );
    }

    // Constroi o corpo do card
    return Material(
      color: Colors.white,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          _buildCardBody(),
        ],
      ),
    );
  }
}
