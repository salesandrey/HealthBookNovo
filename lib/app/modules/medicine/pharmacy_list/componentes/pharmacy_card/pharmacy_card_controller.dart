import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'pharmacy_card_controller.g.dart';

@Injectable()
class PharmacyCardController = _PharmacyCardControllerBase
    with _$PharmacyCardController;

abstract class _PharmacyCardControllerBase with Store {


  @observable
  bool active = false;

  @action
  void changeActive(bool value){
    active = !active;
  }
}
