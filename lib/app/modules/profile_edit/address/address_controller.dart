import 'package:HealthBook/app/models/address_model.dart';
import 'package:HealthBook/app/repositories/address_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'address_controller.g.dart';


class AddressController = _AddressControllerBase with _$AddressController;

abstract class _AddressControllerBase with Store {

  _AddressControllerBase({this.idUser});


  @observable
  String idUser;

  @observable
  ObservableList<AddressModel> address;


  @action
  void changeIdUser(String value){
    idUser = value;
  }

  @action
  Future<void> getAddress() async {
    List<AddressModel> list = await AddressRepository().get(idUser);
    if(list.isEmpty) {
      address = null;
    }else{
      address = list.asObservable();
    }
  }

  @action
  Future<void> deleteAddress(AddressModel current) async{

    AddressModel model = AddressModel(
        city: current.city,
        address: current.address,
        addressnumber:current.addressnumber==null? "" : current.addressnumber,
        cep: current.cep,
        address2: current.address2==null? "" :  current.address2,
        district: current.district,
        createdOn: current.createdOn,
        neigh: current.neigh,
        patientId: current.patientId,
        active: "0",
        coord: "",
        id: current.id
    );

    AddressRepository().update(model);
    address.removeWhere((element) => element.id==current.id);
  }

}
