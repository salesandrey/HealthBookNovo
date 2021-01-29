import 'package:flutter/material.dart';

abstract class IAuth {
  Future<dynamic> login(String email, String password, BuildContext context);
  Future<void> logout();
}