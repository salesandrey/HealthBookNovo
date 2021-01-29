import 'package:HealthBook/app/interfaces/local_storage_interface.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'first_access_controller.g.dart';

@Injectable()
class FirstAccessController = _FirstAccessControllerBase
    with _$FirstAccessController;

abstract class _FirstAccessControllerBase with Store {

  ILocalStorage storage = SharedLocalStorageService();

  @observable
  bool terms;

  Future<void> acceptedTerms() async{
    storage.put("terms", true);
  }
  @action
  Future<void> getTerms() async{
    terms = await storage.get("terms");
  }
}
