import 'package:HealthBook/app/modules/login/login_module.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SharedLocalStorageService()),
        Bind((i)=> HomeController(storage: i.get<SharedLocalStorageService>()))
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
