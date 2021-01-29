

import 'package:HealthBook/app/modules/login/login_controller.dart';
import 'package:validators/validators.dart';

class LoginValidateViewModel{


  void validateFields(LoginController controller) {
    //----------Validação do Campo Email-----------//
    if (isNull(controller.email)) {
      controller.updateEmailFeedBack("Preencha o campo email");
      controller.changeEmailValidator(isNull(controller.email));
    } else {
      if (!isEmail(controller.email)) {
        controller.updateEmailFeedBack("Email inválido");
        controller.changeEmailValidator(true);
      } else {
        controller.updateEmailFeedBack("");
        controller.changeEmailValidator(false);
      }
    }
    //----------Validação do Campo Password-----------//
    if(isNull(controller.password)){
      controller.updatePasswordFeedBack("Preencha o campo senha");
      controller.changePasswordValidator(isNull(controller.password));
    }else{
      if(controller.password.length < 3){
        controller.updatePasswordFeedBack("Senha inválida");
        controller.changePasswordValidator(true);
      }else{
        controller.updatePasswordFeedBack("");
        controller.changePasswordValidator(false);
      }
    }
  }

}