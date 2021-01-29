import 'package:HealthBook/app/modules/first_access/first_access_controller.dart';
import 'package:HealthBook/app/modules/first_access/first_access_page.dart';
import 'package:HealthBook/app/modules/first_access/term_of_use/privacy_policy_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FirstAccessModule extends ChildModule {
  @override
  List<Bind> get binds => [
          Bind((i)=> FirstAccessController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => FirstAccessPage()),




      ];

  static Inject get to => Inject<FirstAccessModule>.of();
}
