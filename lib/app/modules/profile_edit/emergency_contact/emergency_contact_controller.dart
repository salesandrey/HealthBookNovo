import 'package:HealthBook/app/models/emergency_contact_model.dart';
import 'package:HealthBook/app/repositories/emergency_contact_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'emergency_contact_controller.g.dart';

@Injectable()
class EmergencyContactController = _EmergencyContactControllerBase
    with _$EmergencyContactController;

abstract class _EmergencyContactControllerBase with Store {

  @observable
  String userID;

  @action
  void changeUserID(String value){
    userID = value;
  }


  @observable
  ObservableList<EmergencyContactModel> contacts;

  @action
  Future<void> getContacts()async{
    List<EmergencyContactModel> list = await EmergencyContactRepository().get(userID);

    if(list.isEmpty) {
      contacts = null;
    }else{
      contacts = list.asObservable();
    }
  }
  @action
  Future<void> removeContact(EmergencyContactModel contact) async{

    contacts.removeWhere((element) => element.id == contact.id);
    await EmergencyContactRepository().update(contact, "0");
  }
}
