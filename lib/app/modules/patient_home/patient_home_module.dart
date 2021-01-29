
import 'package:HealthBook/app/modules/medicine/view_medicine/view_medicine_controller.dart';
import 'package:HealthBook/app/modules/medicine/view_medicine/view_medicine_page.dart';
import 'package:HealthBook/app/modules/patient_home/list_pet/list_pet_controller.dart';
import 'package:flutter/cupertino.dart';
import 'list_pet/list_pet_page.dart';
import 'patient_home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';

import 'patient_home_page.dart';

class PatientHomeModule extends ChildModule {
  final PageController pageController;

  PatientHomeModule(this.pageController);

  @override
  List<Bind> get binds => [
        Bind((i) => SharedLocalStorageService()),
        Bind((i)=> PatientHomeController(storage: i.get<SharedLocalStorageService>())),
        //from Medicine Module
        $ViewMedicineController,
        Bind((i)=>ListPetController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => PatientHomePage(
                  pageController: pageController,
                )),
        ModularRouter("/ViewMedicine",
            child: (_, args) => ViewMedicinePage(
                  medicine: args.data,
                )),
        ModularRouter("/ListPet",child: (_,args)=> ListPetPage())
      ];

  static Inject get to => Inject<PatientHomeModule>.of();
}
