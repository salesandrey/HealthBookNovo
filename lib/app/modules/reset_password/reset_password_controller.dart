import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'reset_password_controller.g.dart';

@Injectable()
class ResetPasswordController = _ResetPasswordControllerBase
    with _$ResetPasswordController;

abstract class _ResetPasswordControllerBase with Store {

  @observable
  String email;

  @observable
  String emailFeedback;

  @observable
  bool emailValidator = false;

  @observable
  String cpf;

  @observable
  String cpfFeedback;

  @observable
  bool cpfValidator = false;

  @action
  void changeEmail(String value) {
    email = value;
  }

  @action
  void changeEmailFeedback(String value){
    emailFeedback = value;
  }

  @action
  void changeEmailValidator(bool value){
    emailValidator = value;
  }

  @action
  void changeCPF(String value) {
    cpf = value;
  }

  @action
  void changeCPFFeedback(String value){
    cpfFeedback = value;
  }

  @action
  void changeCPFValidator(bool value){
    cpfValidator = value;
  }
}
