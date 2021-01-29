import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/repositories/patient_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/interfaces/local_storage_interface.dart';

part 'profile_controller.g.dart';


class ProfileController = _ProfileControllerBase with _$ProfileController;

abstract class _ProfileControllerBase with Store {

  _ProfileControllerBase({this.storage});

  ILocalStorage storage;

  @observable
  UserModel currentUser;

  @action
  void changeCurrentUser(UserModel model){
    currentUser = model;
  }

  @action
  Future<void> getUser() async{
    String email = await storage.get("email");
    currentUser = await PatientRepository().get(email);
  }
}
