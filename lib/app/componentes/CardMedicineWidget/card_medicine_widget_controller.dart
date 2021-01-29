import 'package:HealthBook/app/models/patient_medicine_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'card_medicine_widget_controller.g.dart';


class CardMedicineWidgetController = _CardMedicineWidgetControllerBase
    with _$CardMedicineWidgetController;

abstract class _CardMedicineWidgetControllerBase with Store {

  _CardMedicineWidgetControllerBase({this.medicine,this.navigator});

  @observable
  PatientMedicineModel medicine;

  @observable
  Function navigator;

  @observable
  bool show = false;

  @action
  void showOptions(bool value){
    show = !show;
  }
}
