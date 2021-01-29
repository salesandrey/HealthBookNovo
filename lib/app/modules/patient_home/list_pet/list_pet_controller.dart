import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/models/pet_model.dart';
part 'list_pet_controller.g.dart';


class ListPetController = _ListPetControllerBase with _$ListPetController;

abstract class _ListPetControllerBase with Store {

  _ListPetControllerBase({this.userID});

  @observable
  String userID;

  @observable
  ObservableList<PetModel> pets;


}
