import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/repositories/patient_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/models/estimate_model.dart';
import 'package:HealthBook/app/repositories/estimate_repository.dart';
import 'package:HealthBook/app/interfaces/local_storage_interface.dart';
part 'medicine_controller.g.dart';


class MedicineController = _MedicineControllerBase with _$MedicineController;

abstract class _MedicineControllerBase with Store {


  _MedicineControllerBase({this.storage});

  ILocalStorage storage;


  @observable
  int selectSegmented = 0;

  @action
  void changeSegmented(int value){
    selectSegmented = value;
  }

  @observable
  UserModel currentUser;

  @observable
  ObservableList<EstimateModel> estimates = ObservableList<EstimateModel>();

  @action
  Future<void> updateStateEstimate(String estimateID) async {
    await EstimateRepository().update(estimateID: estimateID,status: "cancelled",orderApproved: "");
  }

  @action
  Future<void> getCurrentUser() async {
    String email = await storage.get("email");
    currentUser = await PatientRepository().get(email);
    if(currentUser!=null){
      getEstimates();
    }
  }

  @action
  Future<void> getEstimates() async{
    List<EstimateModel> list =  await EstimateRepository().get(currentUser.id);
    if(list.isEmpty) {
      estimates = null;
    }else{
      estimates = list.asObservable();
    }
  }

  @computed
  List<EstimateModel> get estimatePending{
    if(estimates==null){
      return [];
    }
    else if(estimates.isEmpty){
      return [];
    }
    else{
      return estimates.where((element) => element.status=="pending").toList();
    }
  }

  @computed
  List<EstimateModel> get estimateDelivered {

    if(estimates==null){
      return [];
    }
    else if(estimates.isEmpty){
      return [];
    }
    else{
      return estimates.where((element) => element.status=="delivered").toList();
    }
  }
}
