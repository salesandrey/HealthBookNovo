import 'list_dependent_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'list_dependent_page.dart';

class ListDependentModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ListDependentController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => ListDependentPage()),
      ];

  static Inject get to => Inject<ListDependentModule>.of();
}
