

import 'package:HealthBook/app/modules/register/register_controller.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:validators/validators.dart';

class FormValidatorViewModel{

  void validateFields(RegisterController controller){
    //----------Validação do Campo Nome-----------//
    if(isNull(controller.name)){
      controller.changeNameFeedback("Preencha o campo nome");
      controller.changeNameValidator(isNull(controller.name));
    }else{
      if(controller.name.length<2){
        controller.changeNameFeedback("Nome inválido");
        controller.changeNameValidator(true);
      }else{
        controller.changeNameFeedback("");
        controller.changeNameValidator(false);
      }
    }
    //----------Validação do Campo Email-----------//
    if(isNull(controller.email)){
      controller.changeEmailFeedback("Preencha o campo email");
      controller.changeEmailValidator(isNull(controller.email));
    }else{
      if(!isEmail(controller.email)){
        controller.changeEmailFeedback("Email inválido");
        controller.changeEmailValidator(true);
      }else{
        controller.changeEmailFeedback("");
        controller.changeEmailValidator(false);
      }
    }

    //----------Validação do Campo CPF-----------//
    if(isNull(controller.cpf)){
      controller.changeCPFFeedback("Preencha o campo cpf");
      controller.changeCPFValidator(isNull(controller.cpf));
    }else{
      if(!CPFValidator.isValid(CPFValidator.format(controller.cpf))){
        controller.changeCPFFeedback("CPF inválido");
        controller.changeCPFValidator(true);
      }else{
        controller.changeCPFFeedback("");
        controller.changeCPFValidator(false);
      }
    }
    //----------Validação do Campo Password-----------//
    if(isNull(controller.password)){
      controller.changePasswordFeedback("Preencha o campo senha");
      controller.changePasswordValidator(isNull(controller.password));
    }else{
      if(controller.password.length < 3){
        controller.changePasswordFeedback("Senha inválida");
        controller.changePasswordValidator(true);
      }else{
        controller.changePasswordFeedback("");
        controller.changePasswordValidator(false);
      }
    }

  }
}