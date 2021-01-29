import 'package:HealthBook/app/modules/medicine/view_budget/view_budget_page.dart';

import 'view_budget/view_budget_controller.dart';
import 'package:HealthBook/app/modules/medicine/estimate_details/estimate_details_page.dart';

import 'estimate_details/estimate_details_controller.dart';
import 'pharmacy_list/componentes/pharmacy_card/pharmacy_card_controller.dart';
import 'pharmacy_list/pharmacy_list_controller.dart';
import 'delivery_list/delivery_list_controller.dart';
import 'car_list/car_list_controller.dart';
import 'package:HealthBook/app/modules/medicine/rent_car/rent_car_controller.dart';
import 'package:HealthBook/app/modules/medicine/rent_car/rent_car_page.dart';

import 'view_medicine/view_medicine_controller.dart';
import 'package:HealthBook/app/modules/medicine/edit_medicine/edit_medicine_page.dart';
import 'package:HealthBook/app/modules/medicine/register_medicine/register_medicine_page.dart';

import 'register_medicine/register_medicine_controller.dart';
import 'package:HealthBook/app/modules/medicine/list_medicines/list_medicines_page.dart';
import 'view_medicine/view_medicine_page.dart';
import 'edit_medicine/edit_medicine_controller.dart';
import 'list_medicines/list_medicines_controller.dart';
import 'medicine_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'car_store/car_store.dart';
import 'car_list/car_list_page.dart';
import 'delivery_list/delivery_list_page.dart';
import 'package:HealthBook/app/modules/my_health/view_document/view_document_controller.dart';
import 'pharmacy_list/pharmacy_list_page.dart';
import 'package:HealthBook/app/modules/my_health/view_document/view_document_page.dart';
import 'package:HealthBook/app/modules/my_health/register_document/register_document_controller.dart';
import 'package:HealthBook/app/modules/my_health/register_document/register_document_page.dart';
import 'medicine_page.dart';
import 'package:HealthBook/app/modules/profile_edit/add_address/add_address_controller.dart';
import 'package:HealthBook/app/modules/profile_edit/add_address/add_address_page.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';

class MedicineModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SharedLocalStorageService()),
        Bind((i) => CarStore()),
        Bind((i)=>MedicineController(storage: i.get<SharedLocalStorageService>())),
        Bind((i) => RentCarController(car: i.get<CarStore>())),
        Bind((i) => CarListController(
            car: i.get<CarStore>(),
            rentCarController: i.get<RentCarController>())),
        Bind((i) =>
            DeliveryListController(medicineData: i.get<MedicineController>())),
        Bind((i) => PharmacyListController(
            selectAddress: i.get<DeliveryListController>(),
            medicineData: i.get<MedicineController>(),
            rentCarController: i.get<RentCarController>(),
            store: i.get<CarStore>())),
        $EditMedicineController,
        $ViewMedicineController,
        $RegisterMedicineController,
        $ListMedicinesController,
        $ViewDocumentController,
        $RegisterDocumentController,
        $AddAddressController,
        Bind((i) => EstimateDetailsController(
            userID: i.get<MedicineController>().currentUser.id)),
        Bind((i)=>ViewBudgetController())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => MedicinePage()),
        ModularRouter("/ListMedicines",
            child: (_, args) => ListMedicinesPage(currentUser: args.data)),
        ModularRouter("/RegisterMedicine",
            child: (_, args) => RegisterMedicinePage(userID: args.data)),
        ModularRouter("/ViewMedicine",
            child: (_, args) => ViewMedicinePage(medicine: args.data)),
        ModularRouter("/EditMedicine",
            child: (_, args) => EditMedicinePage(medicine: args.data)),
        ModularRouter("/RentCar",
            child: (_, args) => RentCarPage(
                  type: args.data[0],
                  currentUser: args.data[1],
                )),
        ModularRouter("/CarList", child: (_, args) => CarListPage()),
        ModularRouter("/DeliveryList", child: (_, args) => DeliveryListPage()),
        ModularRouter("/PharmacyList", child: (_, args) => PharmacyListPage()),
        ModularRouter("/ViewDocument",
            child: (_, args) => ViewDocumentPage(document: args.data)),
        ModularRouter("/RegisterDocument",
            child: (_, args) => RegisterDocumentPage(id: args.data)),
        ModularRouter("/EstimateDetails", child: (_, args) => EstimateDetailsPage(estimateID: args.data[0], typeEstimative: args.data[1])),
        ModularRouter("/ViewBudget",child: (_,args) => ViewBudgetPage(pharmacyEstimate: args.data,)),
        ModularRouter("/AddAddress", child: (_, args) => AddAddressPage(userID: args.data,)),
      ];

  static Inject get to => Inject<MedicineModule>.of();
}
