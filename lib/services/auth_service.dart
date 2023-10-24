import 'dart:convert';

import 'package:shamo_app/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'http://10.0.2.2:8000/api';

  Future<UserModel> register(
      {required String name,
      required String username,
      required String email,
      required String password}) async {
    String url = '$baseUrl/register';
    Map<String, String> headers = {'Content-Type': 'application/json'};
    String body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password
    });

    var response =
        await http.post(Uri.parse(url), headers: headers, body: body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);

      user.token = 'Bearer ${data['access_token']}';

      return user;
    } else {
      throw Exception('Register Failed');
    }
  }

  Future<UserModel> login(
      {required String email, required String password}) async {
    String url = '$baseUrl/login';
    Map<String, String> headers = {'Content-Type': 'application/json'};
    String body = jsonEncode({'email': email, 'password': password});

    var response =
        await http.post(Uri.parse(url), headers: headers, body: body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);

      user.token = 'Bearer ${data['access_token']}';

      return user;
    } else {
      throw Exception('Login Failed');
    }
  }
}
