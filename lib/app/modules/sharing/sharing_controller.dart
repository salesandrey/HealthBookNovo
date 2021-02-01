import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'sharing_controller.g.dart';

@Injectable()
class SharingController = _SharingControllerBase with _$SharingController;

abstract class _SharingControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
