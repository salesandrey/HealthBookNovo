import 'register_health/register_health_controller.dart';
import 'register_info/register_info_controller.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';
import 'package:http/http.dart';

import 'data_register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'register_info/register_info_page.dart';
import 'data_register_page.dart';
import 'package:HealthBook/app/services/pick_picture_service.dart';
import 'package:HealthBook/app/modules/data_register/register_health/register_health_page.dart';

class DataRegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SharedLocalStorageService()),
        Bind((i) => DataRegisterController(storage: i.get<SharedLocalStorageService>())),
        Bind((i) => RegisterInfoController(currentUser: i.get<DataRegisterController>().currentUser,
            pickPicture: PickPictureService())),
        Bind((i)=>RegisterHealthController(
            currentUser: i.get<DataRegisterController>().currentUser,pickPicture: PickPictureService(),
            registerInfoController: i.get<RegisterInfoController>()))

      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => DataRegisterPage()),
        ModularRouter("/RegisterInfo", child: (_, args) => RegisterInfoPage()),
        ModularRouter("/RegisterHealth",child: (_,args)=>RegisterHealthPage())
      ];

  static Inject get to => Inject<DataRegisterModule>.of();
}
