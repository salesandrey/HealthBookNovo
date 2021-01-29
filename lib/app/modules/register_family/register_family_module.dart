import 'register_family_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'register_family_page.dart';

class RegisterFamilyModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $RegisterFamilyController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => RegisterFamilyPage()),
      ];

  static Inject get to => Inject<RegisterFamilyModule>.of();
}
