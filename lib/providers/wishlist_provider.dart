import 'package:flutter/foundation.dart';
import 'package:shamo_app/models/product_model.dart';

class WishlistProvider with ChangeNotifier {
  List<ProductModel> _wishlist = [];

  List<ProductModel> get wishlist => _wishlist;

  set wishList(List<ProductModel> wishList) {
    _wishlist = wishList;

    notifyListeners();
  }

  setProduct(ProductModel product) {
    if (!isWishlist(product)) {
      _wishlist.add(product);
    } else {
      _wishlist.removeWhere((element) => element.id == product.id);
    }

    notifyListeners();
  }

  isWishlist(ProductModel product) {
    // ignore: unrelated_type_equality_checks
    if (_wishlist.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    }
    return true;
  }
}
