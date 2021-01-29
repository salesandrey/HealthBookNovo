


import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/models/user_model.dart';

class NavigationViewModel{

  Future<void> checkLoginData(UserModel currentUser) async{

    if(currentUser != null)
    {
      Modular.to.pushReplacementNamed('/Home');
    }
    else
    {
      Modular.to.pushNamed('/Register');
    }
  }

}