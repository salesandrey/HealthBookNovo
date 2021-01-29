import 'package:HealthBook/app/interfaces/local_storage_interface.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'configurations_controller.g.dart';


class ConfigurationsController = _ConfigurationsControllerBase
    with _$ConfigurationsController;

abstract class _ConfigurationsControllerBase with Store {

  _ConfigurationsControllerBase({this.storage});

  ILocalStorage storage;

  @observable
  double geolocation;

  @action
  Future<void> getGeolocation()async {
    try{
      geolocation = await storage.get("geolocation");
    } catch(e){}
    finally{
      if(geolocation==null){
        geolocation = 15.0;
      }
    }
  }
}
