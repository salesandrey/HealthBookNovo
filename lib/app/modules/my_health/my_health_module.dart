import 'package:HealthBook/app/modules/my_health/view_document/view_document_page.dart';

import 'view_document/view_document_controller.dart';
import 'edit_document/edit_document_controller.dart';

import 'package:HealthBook/app/modules/my_health/register_document/register_document_page.dart';

import 'register_document/register_document_controller.dart';
import 'my_health_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';

import 'my_health_page.dart';

class MyHealthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SharedLocalStorageService()),
        Bind((i) =>
            MyHealthController(storage: i.get<SharedLocalStorageService>())),
        $ViewDocumentController,
        $EditDocumentController,
        $RegisterDocumentController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => MyHealthPage()),
        ModularRouter("/RegisterDocument",
            child: (_, args) => RegisterDocumentPage(id: args.data)),
        ModularRouter("/ViewDocument",
            child: (_, args) => ViewDocumentPage(document: args.data)),
      ];

  static Inject get to => Inject<MyHealthModule>.of();
}
