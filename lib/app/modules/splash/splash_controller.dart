import 'package:HealthBook/app/interfaces/local_storage_interface.dart';
import 'package:HealthBook/app/repositories/patient_repository.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'splash_controller.g.dart';

@Injectable()
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {

  ILocalStorage storage = SharedLocalStorageService();
  String email;
  String password;
  bool terms;
  bool isConnect;

  Future<void> checkUserLogging() async{
    email = await storage.get("email");
    terms = await storage.get("terms");
    isConnect = await storage.get("isConnect");

    if(terms==null) {
      Modular.to.pushReplacementNamed("/FirstAccess");
    }else {
      if(isConnect!=null && isConnect) {
        dynamic data = await PatientRepository().get(email);
        storage.put("name", data["data"]["name"]);
        storage.put("cpf", data["data"]["cpf"]);
          if (data["data"]["bloodgroup"] == "") {
            Modular.to.pushReplacementNamed("/RegisterData");
          } else {
            Modular.to.pushReplacementNamed("/Home");
          }
        }else{
        Modular.to.pushReplacementNamed("/Login");
      }
    }
  }
}
