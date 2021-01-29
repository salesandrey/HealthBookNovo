import 'dart:convert';

import 'package:HealthBook/app/services/provider_notes_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class FacebookRepository{

  Future login(BuildContext context) async {
    final facebookLogin = FacebookLogin();
    final result = await facebookLogin.logIn(['email']);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await get(
            'https://graph.facebook.com/v2.12/me?fields=name,picture.width(800).height(800),first_name,last_name,email&access_token=$token');
        final profile = jsonDecode(graphResponse.body);
        print(profile);
        Provider.of<ProviderNotesService>(context,listen: false).saveProfile(profile);
        break;
      case FacebookLoginStatus.cancelledByUser:
        break;
      case FacebookLoginStatus.error:
        break;
    }
  }

  Future<void> logout() async {
    final facebookLogin = FacebookLogin();
    facebookLogin.logOut();
  }


}