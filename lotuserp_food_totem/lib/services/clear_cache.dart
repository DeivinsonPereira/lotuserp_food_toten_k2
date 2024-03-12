import 'package:flutter_cache_manager/flutter_cache_manager.dart';

abstract class ClearCache {
  static Future<void> clearCache() async {
    final cache = DefaultCacheManager();
    await cache.emptyCache();
  }

  // Verifica se o cache está vazio
  static Future<void> checkCache() async {
    final cache = DefaultCacheManager();
    final cacheInfo = await cache.getFileFromCache(
        'http://192.168.1.44:9001/getimagem?categoria=GRU&file=GRU_000008.PNG&retorno=URL'); // Substitua 'url' pelo seu URL de imagem
    if (cacheInfo == null) {
      print('Cache está vazio.');
    } else {
      print('Cache não está vazio.');
    }
  }
}
