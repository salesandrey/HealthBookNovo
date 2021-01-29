import 'package:HealthBook/app/models/patient_medicine_model.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/repositories/patient_medicine_repository.dart';
import 'package:HealthBook/app/repositories/patient_repository.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/interfaces/local_storage_interface.dart';

part 'home_controller.g.dart';


class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store{

  _HomeControllerBase({this.storage});

  @observable
  UserModel currentUser;

  ILocalStorage storage;

  @action
  Future<void> changeCurrentUser() async{
    String email = await storage.get("email");
    currentUser = await PatientRepository().get(email);
  }

  @observable
  ObservableList<PatientMedicineModel> medicines;

  @observable
  PageController pageController = PageController(initialPage: 0);

  @action
  void changePage(int index){
    pageController.jumpToPage(index);
  }
}
