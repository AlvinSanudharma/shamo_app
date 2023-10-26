import 'package:flutter/foundation.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/services/product_service.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  set setProducts(List<ProductModel> products) {
    _products = products;

    notifyListeners();
  }

  Future<void> getProducts() async {
    try {
      List<ProductModel> products = await ProductService().getProducts();

      setProducts = products;
    } catch (e) {
      print(e);
    }
  }
}
