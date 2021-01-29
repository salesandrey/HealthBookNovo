import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'medi_appointment_controller.g.dart';

@Injectable()
class MediAppointmentController = _MediAppointmentControllerBase
    with _$MediAppointmentController;

abstract class _MediAppointmentControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
