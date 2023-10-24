import 'package:flutter/foundation.dart';
import 'package:shamo_app/models/user_model.dart';
import 'package:shamo_app/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  set user(UserModel? user) {
    _user = user;

    notifyListeners();
  }

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool isLoading) {
    _isLoading = isLoading;

    notifyListeners();
  }

  bool _isLoadingLogin = false;

  bool get isLoadingLogin => _isLoadingLogin;

  set isLoadingLogin(bool isLoadingLogin) {
    _isLoadingLogin = isLoadingLogin;

    notifyListeners();
  }

  Future<bool> register(
      {required String name,
      required String username,
      required String email,
      required String password}) async {
    try {
      isLoading = true;

      UserModel user = await AuthService().register(
          name: name, username: username, email: email, password: password);

      _user = user;

      return true;
    } catch (e) {
      return false;
    } finally {
      isLoading = false;
    }
  }

  Future<bool> login({required String email, required String password}) async {
    try {
      isLoadingLogin = true;

      UserModel user =
          await AuthService().login(email: email, password: password);

      _user = user;

      return true;
    } catch (e) {
      return false;
    } finally {
      isLoadingLogin = false;
    }
  }
}
