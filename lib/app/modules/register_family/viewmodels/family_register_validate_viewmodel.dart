import 'package:HealthBook/app/modules/register_family/register_family_controller.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:validators/validators.dart';

class FamilyRegisterValidateViewModel{


  void formValidate(RegisterFamilyController controller){


    //----------Validação do Campo Nome-----------//
    if(isNull(controller.name)){
      controller.changeNameFeedback("Campo Obrigatório");
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
    //----------Validação do Campo CPF-----------//
    if(isNull(controller.cpf)){
      controller.changeCPFFeedback("Campo Obrigatório");
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

    //----------Validação do Campo Data de Nascimento-----------//
    if(isNull(controller.dateBirthDay)){
      controller.changeDateBirthdayFeedback("Campo Obrigatório");
      controller.changeDateBirthdayValidator(true);
    }else{
      if(controller.dateBirthDay.length<10){
        controller.changeDateBirthdayFeedback("Data Inválida");
        controller.changeDateBirthdayValidator(true);
      }else{
        controller.changeDateBirthdayFeedback("");
        controller.changeDateBirthdayValidator(false);
      }
    }

    //----------Validação do Campo Sexo-----------//
    if(isNull(controller.sex)){
      controller.changeSexValidate(true);
    }else{
      controller.changeSexValidate(false);
    }

    //----------Validação do Campo Parentesco-----------//
    if(isNull(controller.kinship)){
      controller.changeKinshipValidator(true);
    }else{
      controller.changeKinshipValidator(false);
    }

    if(controller.hasLegalRepresentative){
    //----------Validação do Campo Email-----------//
    if (isNull(controller.emailLegalRepresentativeFeedback)) {
      print("null");
      controller.changeEmailLegalRepresentativeFeedback("Preencha o campo email");
      controller.changeEmailLegalRepresentativeValidate(isNull(controller.emailLegalRepresentativeFeedback));
    } else {
      if (!isEmail(controller.emailLegalRepresentativeFeedback)) {print("erro aqui");

        controller.changeEmailLegalRepresentativeFeedback("Email inválido");
        controller.changeEmailLegalRepresentativeValidate(true);
      } else {
        controller.changeEmailLegalRepresentativeFeedback("");
        controller.changeEmailLegalRepresentativeValidate(false);
      }
    }
    }else{
      controller.changeEmailLegalRepresentativeFeedback("");
      controller.changeEmailLegalRepresentativeValidate(false);
    }

    //----------Validação da Imagem do Documento-----------//
    if(controller.documentImage==null){
      controller.changeDocumentImageValidator(true);
    }else{
      controller.changeDocumentImageValidator(false);
    }
  }

}