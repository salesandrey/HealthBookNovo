import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'register_familiar_controller.g.dart';

@Injectable()
class RegisterFamiliarController = _RegisterFamiliarControllerBase
    with _$RegisterFamiliarController;

abstract class _RegisterFamiliarControllerBase with Store {

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  String name;


  @action
  void changeName(String value){
    name = value;
  }
}
