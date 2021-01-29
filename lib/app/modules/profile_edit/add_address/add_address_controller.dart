import 'package:HealthBook/app/models/address_model.dart';
import 'package:HealthBook/app/repositories/address_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'add_address_controller.g.dart';

@Injectable()
class AddAddressController = _AddAddressControllerBase
    with _$AddAddressController;

abstract class _AddAddressControllerBase with Store {

  @observable
  String userID;

  @action
  void changeUserID(String value){
    userID = value;
  }

  @observable
  String cep;

  @action
  void changeCep(String value){
    cep = value;
  }

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  String address;

  @action
  void changeAddress(String value){
    address = value;
  }

  @observable
  String neighborhood;

  @action
  void changeNeighborhood(String value){
    neighborhood = value;
  }

  @observable
  String city;

  @action
  void changeCity(String value){
    city =value;
  }

  @observable
  String uf;

  @action
  void changeUF(String value){
    uf = value;
  }

  @observable
  String numberHouse;

  @action
  void changeNumberHouse(String value){
    print(numberHouse);
    numberHouse = value;
  }

  @observable
  String complement;

  @action
  void changeComplement(String value){
    complement = value;
  }

  @action
  Future<void> saveData() async{

    AddressModel model = AddressModel(
      city: city,
      address: address,
      addressnumber: numberHouse,
      cep: cep,
      address2: complement,
      district: uf,
      createdOn: DateTime.now(),
      neigh: neighborhood,
      patientId: userID,
      active: "1",
      coord: ""
    );

    AddressRepository().insert(model);
  }

}
