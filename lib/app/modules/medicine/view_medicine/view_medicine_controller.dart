import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'view_medicine_controller.g.dart';

@Injectable()
class ViewMedicineController = _ViewMedicineControllerBase
    with _$ViewMedicineController;

abstract class _ViewMedicineControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
