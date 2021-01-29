



import 'package:HealthBook/app/modules/profile_edit/add_emergency_contact/add_emergency_contact_controller.dart';
import 'package:HealthBook/app/utils/snack_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:validators/validators.dart';

class AddEmergencyValidatorViewModel {


  bool validatorFields(AddEmergencyContactController controller,BuildContext context){


    if (isNull(controller.name)) {
      SnackMessage().showSnack(context, "Nome em branco");
      return false;
    } else {
      if (controller.name.length < 2) {
        SnackMessage().showSnack(context, "Nome inválido");
        return false;
      }
    }

    if (isNull(controller.name)) {
      SnackMessage().showSnack(context, "Nome em branco");
      return false;
    } else {
      if (controller.name.length < 2) {
        SnackMessage().showSnack(context, "Nome inválido");
        return false;
      }
    }

    if(isNull(controller.email)){
      SnackMessage().showSnack(context, "Email em branco");
      return false;
    }else{
      if(!isEmail(controller.email)){
        SnackMessage().showSnack(context, "Email inválido");
        return false;
      }
    }

    if (isNull(controller.phone)) {
      SnackMessage().showSnack(context, "Telefone em branco");
      return false;
    } else {
      if (controller.phone.length < 14) {
        SnackMessage().showSnack(context, "Telefone inválido");
        return false;
      }
    }

    if (isNull(controller.kinship)) {
      SnackMessage().showSnack(context, "Parentesco em branco");
      return false;
    } else {
      if (controller.phone.length < 2) {
        SnackMessage().showSnack(context, "Parentesco inválido");
        return false;
      }
    }
    return true;
  }



}