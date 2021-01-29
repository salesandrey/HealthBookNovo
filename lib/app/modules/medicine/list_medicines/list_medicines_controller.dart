import 'package:HealthBook/app/models/patient_medicine_model.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/repositories/patient_medicine_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'list_medicines_controller.g.dart';

@Injectable()
class ListMedicinesController = _ListMedicinesControllerBase
    with _$ListMedicinesController;

abstract class _ListMedicinesControllerBase with Store {

  @observable
  UserModel currentUser;

  @observable
  ObservableList<PatientMedicineModel> medicines;

  @action
  Future<void> getMedicines() async {
    List<PatientMedicineModel> list =  await PatientMedicineRepository().get(currentUser.id, "1");
    if(list.isEmpty) {
      medicines = null;
    }else{
      medicines = list.asObservable();
    }
  }

  @action
  Future<void> removeMedicine(PatientMedicineModel medicine) async{
    medicines.removeWhere((element) => element.id == medicine.id);
    await PatientMedicineRepository().update(medicine, "0");
  }

  @action
  void changeCurrentUser(UserModel user){
    currentUser = user;
  }
}
