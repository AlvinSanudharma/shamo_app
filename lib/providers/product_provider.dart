import 'package:flutter/foundation.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/services/product_service.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  Future<void> getProducts() async {
    try {
      _products = await ProductService().getProducts();

      notifyListeners();
    } catch (e) {
      throw e;
    }
  }
}
