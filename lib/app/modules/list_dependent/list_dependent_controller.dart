import 'package:HealthBook/app/interfaces/local_storage_interface.dart';
import 'package:HealthBook/app/models/dependent_model.dart';
import 'package:HealthBook/app/repositories/dependent_repository.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'list_dependent_controller.g.dart';

@Injectable()
class ListDependentController = _ListDependentControllerBase
    with _$ListDependentController;

abstract class _ListDependentControllerBase with Store {
  ILocalStorage storage = SharedLocalStorageService();

  @observable
  ObservableList dependents = [].asObservable();

  @action
  void addDependent(DependentModel dependent){
    dependents.add(dependent);
  }

  Future<void> getDependents() async{
    String parentID = await storage.get("id");
    dynamic data = await DependentRepository().get(parentID);
    print(data);
    if(data!=null){
      for(int i = 0;i<data["data"].length;i++){
        DependentModel model = DependentModel(
            id: data["data"][i]["id"],
            parentID: data["data"][i]["parentID"],
            type: data["data"][i]["type"],
            fullName: data["data"][i]["name"],
            cpf: data["data"][i]["cpf"],
            birthday: data["data"][i]["birthdate"],
            sex: data["data"][i]["sex"],
            photo: data["data"][i]["photo"]);
          addDependent(model);
      }
    }
  }
}
