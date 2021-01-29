import 'package:HealthBook/app/models/address_model.dart';
import 'package:HealthBook/app/models/estimate_model.dart';
import 'package:HealthBook/app/models/pharmacy_estimate_list_model.dart';
import 'package:HealthBook/app/repositories/address_repository.dart';
import 'package:mobx/mobx.dart';

part 'view_budget_controller.g.dart';


class ViewBudgetController = _ViewBudgetControllerBase
    with _$ViewBudgetController;

abstract class _ViewBudgetControllerBase with Store {

  _ViewBudgetControllerBase({this.pharmacyEstimate,this.address});


  @observable
  PharmacyEstimateListModel pharmacyEstimate;

  @action
  void changePharmacyEstimate(PharmacyEstimateListModel model){
    pharmacyEstimate = model;
  }

  @observable
  ObservableList<EstimateModel> estimates;

  @observable
  AddressModel address;

  @action
  Future<void> getAddress() async{
    List<AddressModel> list = await AddressRepository().get(pharmacyEstimate.patientId);
  }



}
