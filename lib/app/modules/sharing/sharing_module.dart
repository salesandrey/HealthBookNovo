import 'sharing_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'sharing_page.dart';

class SharingModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $SharingController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => SharingPage()),
      ];

  static Inject get to => Inject<SharingModule>.of();
}
