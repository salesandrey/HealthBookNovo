

import 'package:flutter/material.dart';

class ProviderNotesService extends ChangeNotifier{

  dynamic profile;
  String typeServiceLogin;

  void saveTypeServiceLogin(String service){
    typeServiceLogin = service;
    notifyListeners();
  }

  void saveProfile(dynamic newProfile){
    profile = newProfile;
    notifyListeners();
  }

}