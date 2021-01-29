import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/interfaces/local_storage_interface.dart';
part 'geolocation_configuration_controller.g.dart';

class GeolocationConfigurationController = _GeolocationConfigurationControllerBase
    with _$GeolocationConfigurationController;

abstract class _GeolocationConfigurationControllerBase with Store {


  _GeolocationConfigurationControllerBase({this.valueSlider,this.storage});

  @observable
  double valueSlider;

  @observable
  ILocalStorage storage;

  @action
  void changeValueSlider(dynamic value){
    valueSlider = value;
  }

  @action
  Future<void> saveGeolocation() async{
    await storage.put("geolocation", valueSlider);
  }
}
