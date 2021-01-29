import 'package:HealthBook/app/models/patient_medicine_model.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/repositories/patient_medicine_repository.dart';
import 'package:HealthBook/app/repositories/patient_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/interfaces/local_storage_interface.dart';

part 'patient_home_controller.g.dart';


class PatientHomeController = _PatientHomeControllerBase
    with _$PatientHomeController;

abstract class _PatientHomeControllerBase with Store {


  _PatientHomeControllerBase({this.storage});

  ILocalStorage storage;


  @observable
  UserModel currentUser;


  @observable
  ObservableList<PatientMedicineModel> medicines;


  @action
  Future<void> getCurrentUser() async{
    String email = await storage.get("email");
    currentUser = await PatientRepository().get(email);
  }



  @action
  Future<void> getMedicines() async{
    List<PatientMedicineModel> list =  await PatientMedicineRepository().get(currentUser.id, "1");
    if(list.isEmpty) {
      medicines = null;
    }else{
      medicines = list.asObservable();
    }
  }
}
