import 'package:HealthBook/app/interfaces/local_storage_interface.dart';
import 'package:HealthBook/app/repositories/patient_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/models/user_model.dart';
part 'data_register_controller.g.dart';


class DataRegisterController = _DataRegisterControllerBase with _$DataRegisterController;

abstract class _DataRegisterControllerBase with Store {

  _DataRegisterControllerBase({this.storage});

  ILocalStorage storage;

  @observable
  UserModel currentUser;

  @action
  Future<void> getUser() async {
    String email = await storage.get("email");
    currentUser = await PatientRepository().get(email);
  }
}
