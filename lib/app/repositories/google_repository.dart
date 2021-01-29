import 'dart:convert';
import 'package:HealthBook/app/services/provider_notes_service.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class GoogleRepository{

  var token;
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  Future login(BuildContext context) async {
    try {
      await _googleSignIn.signIn().then((result)=>
          result.authentication.then((googleKey)=> token = googleKey.accessToken));

      final response = await get(
          "https://www.googleapis.com/oauth2/v1/userinfo?alt=json&access_token=$token");
      print("Aqui");
      print(response.body);
      final profile = jsonDecode(response.body);
      print(profile);
      Provider.of<ProviderNotesService>(context, listen: false).saveProfile(profile);
    } catch (e) {
      print(e);
    }
  }

  Future<void> logout() async {
    await _googleSignIn.disconnect();
  }


}