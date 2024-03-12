import '../../services/dependencies.dart';

abstract class Endpoints {
  static var configController = Dependencies.configController();

  // Endpoints para buscar ip do servidor
  static const endpointSearchIp =
      'http://siage.vistatecnologia.com.br/cgi-bin/siagenet/contrato_link_externo?pnocontrato=';

  // Tipo de empresa
  static const tipoIp = '&ptipo=4';

  // Endpoint para buscar empresa
  static const endpointSearchEmpresa = 'food_totem_getempresa?pidEmpresa=';

  // Endpoint para buscar os grupos
  static const endpointSearchGrupos = 'food_totem_grupos?pidempresa=';

  // Endpoint para buscar os produtos
  static const endpointSearchProdutos = 'food_totem_produtos?pidEmpresa=';

  // Endpoint para buscar os complementos
  static const endpointSearchComplementos =
      'food_totem_grupos_comps?pidEmpresa=';

  static String endpointSearchImageGroup(String file) {
    return '${configController.ipSelecionado}getimagem?categoria=GRU&file=$file&retorno=URL';
  }

  static String endpointSearchImageProduct(String file) {
    return '${configController.ipSelecionado}getimagem?categoria=PRO&file=$file&retorno=URL';
  }
}
