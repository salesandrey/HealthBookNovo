import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/modules/medicine/medicine_controller.dart';
import 'package:HealthBook/app/models/address_model.dart';
import 'package:HealthBook/app/repositories/address_repository.dart';
import 'componentes/delivery_card/delivery_card_page.dart';
import 'componentes/delivery_card/delivery_card_controller.dart';
part 'delivery_list_controller.g.dart';

@Injectable()
class DeliveryListController = _DeliveryListControllerBase
    with _$DeliveryListController;

abstract class _DeliveryListControllerBase with Store {

  _DeliveryListControllerBase({this.medicineData});

  MedicineController medicineData;


  @observable
  ObservableList<DeliveryCardWidget> list = ObservableList<DeliveryCardWidget>();

  @observable
  ObservableList<AddressModel> listAddress = ObservableList<AddressModel>();

  @action
  void changeNoDelivery(int index){
    list.forEach((element) {
      if(list.elementAt(index)!=element)
      element.controller.changeOther(false);});
  }


  @action
  Future<void> getAddress() async {
    List<AddressModel> list =  await AddressRepository().get(medicineData.currentUser.id);
    if(list.isEmpty) {
      listAddress = null;
    }else{
      listAddress = list.asObservable();
    }

    buildCardDelivery();
  }

  @action
  void buildCardDelivery(){
    if(listAddress!=null && listAddress.isNotEmpty){
      listAddress.forEach((element) {
        list.add(DeliveryCardWidget(controller: DeliveryCardController(changeAnother: (){changeNoDelivery(listAddress.indexOf(element));}),
            addressCheck: element.address,
            address:"${element.address},${element.addressnumber} \n${element.city}-${element.district}",
            imagePath: "assets/images/icons/location.png"));
      });
      list.add(DeliveryCardWidget(imagePath: "assets/images/icons/pharmacy.png",
          addressCheck: "Retirar medicamento no local",
          address: "Retirar medicamento no local",controller: DeliveryCardController(changeAnother: (){changeNoDelivery(listAddress.length);})));
    }
  }
}
