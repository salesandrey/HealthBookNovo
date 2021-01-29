import 'package:HealthBook/app/modules/home/home_module.dart';
import 'package:HealthBook/app/modules/login/login_module.dart';

import 'register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'register_page.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $RegisterController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => RegisterPage()),
      ];

  static Inject get to => Inject<RegisterModule>.of();
}
