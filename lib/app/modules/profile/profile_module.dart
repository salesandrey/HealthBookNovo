import 'profile_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';
import 'profile_page.dart';

class ProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SharedLocalStorageService()),
        Bind((i)=>ProfileController(storage: i.get<SharedLocalStorageService>()))
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => ProfilePage()),
      ];

  static Inject get to => Inject<ProfileModule>.of();
}
