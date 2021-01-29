import 'dart:convert';
import 'package:HealthBook/app/interfaces/auth_interface.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AuthRepository implements IAuth {


  @override
  Future<dynamic> login(String email,String password,BuildContext context) async{

    String url = "https://health.lanconi.com.br/api/login";

    Map user = Map<String,dynamic>();
    user['email'] = email;
    user["password"] = password;

    Response response = await post(url, body: user);
      if (response.statusCode == 200) {
        dynamic data = jsonDecode(response.body);
        return data;
      }else{
        return null;
      }
  }

  @override
  Future<void> logout() async {}
}