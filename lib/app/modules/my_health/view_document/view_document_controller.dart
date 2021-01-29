import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'view_document_controller.g.dart';

@Injectable()
class ViewDocumentController = _ViewDocumentControllerBase
    with _$ViewDocumentController;

abstract class _ViewDocumentControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
