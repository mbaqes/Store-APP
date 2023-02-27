import 'dart:convert';

import 'package:stateapp/views/homepagesteptwo/data/model/product_model.dart';
import 'package:stateapp/views/homepagesteptwo/data/model/store_model.dart';
import 'package:stateapp/views/hompagestepone/homepage.dart';
import 'package:http/http.dart' as http;

class ProductRepository {
  Future<List<ProductsTwo>> getProducts() async {
    var uriGet = Uri.parse("https://dummyjson.com/products");
    var response = await http.get(uriGet);
    var json = jsonDecode(response.body);
    var store = StoreModelTwo.fromJson(json);
    return store.products!;
  }
}
