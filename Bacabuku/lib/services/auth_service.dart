import 'dart:convert';
import 'dart:core';
import 'package:bacabuku/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Uri baseUrl1 = Uri.parse("http://127.0.0.1:80/api/");
  Uri baseUrl2 = Uri.parse("http://127.0.0.1:80/api/");

  Future<UserModel> register({
    String? name,
    String? username,
    String? email,
    String? password,
  }) async {
    var response = await http.post(
      baseUrl1,
      body: jsonEncode({
        'name': name,
        'username': username,
        'email': email,
        'password': password,
      }),
    );
    print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login({
    String? email,
    String? password,
  }) async {
    var response = await http.post(
      baseUrl2,
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
