
import 'package:HealthBook/app/modules/home/home_module.dart';
import 'package:HealthBook/app/modules/register/register_module.dart';
import 'package:HealthBook/app/modules/reset_password/reset_password_module.dart';

import 'login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_page.dart';

class LoginModule extends ChildModule {

  @override
  List<Bind> get binds => [
       Bind((i)=> LoginController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
