import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'componentes/pharmacy_card/pharmacy_card_page.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/models/pharma_model.dart';
import 'package:HealthBook/app/models/address_model.dart';
import 'package:HealthBook/app/repositories/pharma_repository.dart';
import 'componentes/pharmacy_card/pharmacy_card_controller.dart';
import 'package:HealthBook/app/modules/medicine/delivery_list/delivery_list_controller.dart';
import 'package:HealthBook/app/modules/medicine/car_store/car_store.dart';
import 'package:HealthBook/app/modules/medicine/medicine_controller.dart';
import 'package:HealthBook/app/modules/medicine/rent_car/rent_car_controller.dart';
import 'package:HealthBook/app/repositories/estimate_repository.dart';
part 'pharmacy_list_controller.g.dart';

@Injectable()
class PharmacyListController = _PharmacyListControllerBase
    with _$PharmacyListController;

abstract class _PharmacyListControllerBase with Store {

  _PharmacyListControllerBase({this.selectAddress,this.store,this.medicineData,this.rentCarController});

  DeliveryListController selectAddress;
  CarStore store;
  MedicineController medicineData;
  RentCarController rentCarController;

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  ObservableList<PharmacyCardWidget> list = ObservableList<PharmacyCardWidget>();

  @observable
  UserModel currentUser;

  @observable
  ObservableList<PharmaModel> pharmacies = ObservableList<PharmaModel>();

  @action
  Future<void> getPharmacies() async{
    List<PharmaModel> list =  await PharmaRepository().get("","");
    if(list.isEmpty) {
      pharmacies = null;
    }else{
      pharmacies = list.asObservable();
    }

    buildCardDelivery();
  }

  @action
  void buildCardDelivery(){
    if(pharmacies!=null && pharmacies.isNotEmpty){
      pharmacies.forEach((element) {
        list.add(PharmacyCardWidget(
            id: element.id,
            controller: PharmacyCardController(),title: element.name,
            imagePath: element.imageUrl));
      });
    }
  }

  @action
  Future<void> saveEstimative() async {

    String delivery = selectAddress.list.singleWhere((element) => element.controller.active).addressCheck;
    String address = selectAddress.listAddress.singleWhere((element) => element.address == delivery,orElse: ()=>AddressModel(id: "")).id;

    await EstimateRepository().insert(
        items: store.car,
        type: rentCarController.typeProduct,
        userID: medicineData.currentUser.id,
        delivery: delivery == "Retirar medicamento no local"? "no": "yes",
        address: address,
        pharmacies: list.map((element) => int.parse(element.id)).toList()
    );

  }


}
