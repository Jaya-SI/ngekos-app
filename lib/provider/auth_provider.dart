import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:ngekos/model/user_model.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  UserModel? _user;

  UserModel get user => _user!;
  set user(UserModel newUser) {
    _user = newUser;
    notifyListeners();
  }

  Future<UserModel?> register(
    String name,
    String email,
    String password,
    String conpassword,
    String phone,
  ) async {
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': conpassword,
      'phone': phone,
    });

    var response = await http.post(
      Uri.parse('https://ngekos.traveling-pul.com/api/register'),
      headers: headers,
      body: body,
    );

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];
      _user = user;
      return _user;
    } else {
      return null;
    }
  }

  Future<UserModel?> login(
    String email,
    String password,
  ) async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var body = {
        'email': email,
        'password': password,
      };
      var response = await http.post(
        Uri.parse('https://ngekos.traveling-pul.com/api/login'),
        body: body,
      );
      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body)['data'];
        UserModel user = UserModel.fromJson(data['user']);
        user.token = 'Bearer ' + data['access_token'];
        _user = user;
        return _user;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
