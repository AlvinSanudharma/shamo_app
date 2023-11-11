import 'package:flutter/foundation.dart';
import 'package:shamo_app/models/cart_model.dart';
import 'package:shamo_app/services/transaction_service.dart';

class TransactionProvider with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool isLoading) {
    _isLoading = isLoading;

    notifyListeners();
  }

  Future<bool> checkout(
      String token, List<CartModel> carts, double totalPrice) async {
    try {
      if (await TransactionService().checkout(token, carts, totalPrice)) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
