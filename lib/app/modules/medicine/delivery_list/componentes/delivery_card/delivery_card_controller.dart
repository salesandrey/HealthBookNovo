import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'delivery_card_controller.g.dart';


class DeliveryCardController = _DeliveryCardControllerBase
    with _$DeliveryCardController;

abstract class _DeliveryCardControllerBase with Store {

  _DeliveryCardControllerBase({this.changeAnother});

  @observable
  bool active = false;

  @action
  void changeActive(bool value){
    active = !active;
    if(active==true)
      changeAnother();

  }

  @action
  void changeOther(bool value){
      active = value;
  }

  @observable
  Function changeAnother;

}
