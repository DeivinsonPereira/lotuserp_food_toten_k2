import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/common/components/menu_variables.dart';

import '../collections/complemento.dart';
import '../collections/grupo.dart';
import '../collections/produto.dart';

class MenuPageController extends GetxController {
  TextEditingController informationTextController = TextEditingController();

  var mealOption = 0.obs;
  var grupos = [].obs;
  var produtos = [].obs;
  var complementos = [].obs;
  var grupoSelecionado = 0.obs;
  var produtosEscolhidos = [].obs;
  var complementosFiltrados = [].obs;
  var complementosSelecionados = [].obs;
  var carrinho = [].obs;

  // Modifica a opção da refeição ( 0 - levar, 1 - comer aqui)
  void setMealOption(int value) {
    mealOption.value = value;
    update();
  }

  // Retorna a opção da refeição
  String getMealOption() {
    return mealOption.value == MenuVariables.COMER_AQUI
        ? 'Levar'
        : 'Comer aqui';
  }

  // Adiciona "grupos" vindos do banco de dados local na variavel grupos
  void setGrupos(List<grupo> grupos) {
    this.grupos.clear();
    this.grupos.addAll(grupos);
    update();
  }

  // Atualiza a variável do grupo
  void updateGrupoSelecionado(int index) {
    grupoSelecionado.value = index;
    update();
  }

  // atualiza a lista de produtos escolhidos de acordo com o id_grupo escolhido
  void updateProdutosEscolhidos() {
    produtosEscolhidos.clear();
    var newProdutos = produtos.where(
        (prod) => prod.id_grupo == grupos[grupoSelecionado.value].id_grupo);
    produtosEscolhidos.addAll(newProdutos.toList());
    update();
  }

  // Adiciona "produtos" vindos do banco de dados local na variavel produtos
  void setProdutos(List<produto> produtos) {
    this.produtos.clear();
    this.produtos.addAll(produtos);
    update();
  }

  // Adiciona "complementos" vindos do banco de dados local na variavel complementos
  void setComplementos(List<complemento> complementos) {
    this.complementos.clear();
    this.complementos.addAll(complementos);
    update();
  }

  // Atualiza a lista de complementos filtrados de acordo com o id_grupo do produto escolhido
  void updateComplementosEscolhidos(produto produto) {
    complementosFiltrados.clear();
    var newComplementos =
        complementos.where((comp) => comp.id_grupo == produto.id_grupo);
    complementosFiltrados.addAll(newComplementos.toList());
    update();
  }

  // Atualiza a lista de complementos escolhidos
  void updateComplementosSelecionados(complemento complemento) {
    try {
      var exist = complementosSelecionados
          .firstWhere((item) => item.item == complemento.item);
      if (exist != null) {
        complementosSelecionados.remove(exist);
      } else {
        complementosSelecionados.add(complemento);
      }
    } catch (e) {
      complementosSelecionados.add(complemento);
    }
    update();
  }

  // Adiciona itens ao carrinho
  void updateCarrinho(produto produtoEscolhido) {
    var comp = [];
    for (complemento element in complementosSelecionados) {
      comp.add({
        'nome_complemento': element.nome_complemento,
        'valor': element.valor
      });
    }

    carrinho.add({
      'produto': produtoEscolhido,
      'complementos': comp,
      'info': informationTextController.text
    });

    print(carrinho);
  }

  // Remove o complemento selecionado
  void removeComplementoSelecionado(complemento complemento) {
    complementosSelecionados.remove(complemento);
    update();
  }

  
  // Limpa a lista de Complementos Selecionados
  void clearComplementoSelecionado() {
    complementosSelecionados.clear();
    update();
  }

  // Limpa a lista de Grupos
  void clearGrupos() {
    grupos.clear();
    update();
  }

  // Limpa a lista de Produtos
  void clearProdutos() {
    produtos.clear();
    update();
  }

  // Limpa a lista de Complementos
  void clearComplementos() {
    complementos.clear();
    update();
  }

  // Limpa a lista do carrinho
  void clearCarrinho() {
    carrinho.clear();
    update();
  }

  // Limpa o controlador do campo de texto InformationTextController
  void clearInformationTextController() {
    informationTextController.clear();
    update();
  }
  
  // Limpa as listas de Grupos, Produtos e Complementos
  void clearAll() {
    grupoSelecionado.value = 0;
    produtosEscolhidos.clear();
    complementosFiltrados.clear();
    complementosSelecionados.clear();
    carrinho.clear();
    update();
  }
}
