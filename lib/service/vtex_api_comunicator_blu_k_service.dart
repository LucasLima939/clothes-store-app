import 'dart:convert';
import 'package:http/http.dart';
import 'package:project_blu_k/models/products/product.dart';

class VtexApiComunicatorBluKService{
  final String url = 'https://lojabluk.myvtex.com/api/';
  final String endpoint = 'catalog_system/pub/products/search';
  final String appKey = 'vtexappkey-lojabluk-QHGXMV';
  final String appToken = 'CRPJANGOAXMNBAANRBTSNFACBGVJHTTSVBWICGDWGBFEMVLPPZEXLAFXQMIURXGGDTSZDRLLYWMLZWPFUGTHPVHUVZRQYIFIUYATDLMXOTYONTXUWCZLDZRIMXDDAUMP';
  Map<String, String> get requestHeaders => {
       'Content-type': 'application/json',
       'Accept': 'application/json',
       'x-vtex-api-appkey': appKey,
       'x-vtex-api-apptoken': appToken
     };

  Future<List<ProductData>> getProducts() async {
    Response res = await get(url + endpoint, headers: requestHeaders);

    if (res.statusCode == 206) {
      List<dynamic> body = jsonDecode(res.body);

      List<ProductData> products = [];

      for(dynamic json in body){
        ProductData produto = ProductData();
        produto = ProductData.fromJson(json);
        products.add(produto);
      }

      return products;
    } else {
      throw "Can't get products.";
    }
  


  }
}