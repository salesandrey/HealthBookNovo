import 'package:HealthBook/app/models/pharma_estimate_product_model.dart';
import 'package:HealthBook/app/models/pharmacy_estimate_list_model.dart';
import 'package:HealthBook/app/repositories/pharmacy_estimate_list_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../medicine_controller.dart';

part 'estimate_details_controller.g.dart';


class EstimateDetailsController = _EstimateDetailsControllerBase
    with _$EstimateDetailsController;

abstract class _EstimateDetailsControllerBase with Store {


  _EstimateDetailsControllerBase({this.userID,this.medicineController});

  @observable
  String estimateID;

  @observable
  MedicineController medicineController;

  @observable
  String userID;


  @action
  void changeEstimateID(String value){
    estimateID = value;
    getPharmaciesEstimates();
  }

  @observable
  ObservableList<PharmacyEstimateListModel> pharmaciesEstimates;

  @action
  Future<void> getPharmaciesEstimates() async {
    List<PharmacyEstimateListModel> list =  await PharmacyEstimateListRepository().get(estimateID,userID);
    if(list.isEmpty) {
      pharmaciesEstimates = null;
    }else{
      pharmaciesEstimates = list.asObservable();
    }
  }



}
