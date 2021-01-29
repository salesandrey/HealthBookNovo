import 'package:HealthBook/app/models/emergency_contact_model.dart';
import 'package:HealthBook/app/repositories/emergency_contact_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'add_emergency_contact_controller.g.dart';

@Injectable()
class AddEmergencyContactController = _AddEmergencyContactControllerBase
    with _$AddEmergencyContactController;

abstract class _AddEmergencyContactControllerBase with Store {

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  String userID;

  @action
  void changeUserID(String value){
    userID = value;
  }

  @observable
  String name;

  @action
  void changeName(String value){
    name = value;
  }

  @observable
  String email;

  @action
  void changeEmail(String value){
    email = value;
  }

  @observable
  String phone;

  @action
  void changePhone(String value){
    phone = value;
  }

  @observable
  String kinship;

  @action
  void changeKinship(String value){
    kinship = value;
  }

  @action
  Future<void> saveData() async{

    EmergencyContactModel model = EmergencyContactModel(
      parentId: userID,
      email: email,
      name: name,
      phone: phone,
      relationship: kinship
    );

    print(model.toJson());

    await EmergencyContactRepository().insert(model);
  }
}
