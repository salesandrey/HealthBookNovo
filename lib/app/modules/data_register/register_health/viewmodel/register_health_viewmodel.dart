import 'package:flutter/material.dart';
import 'package:HealthBook/app/modules/data_register/register_health/register_health_controller.dart';
import 'package:validators/validators.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:HealthBook/app/utils/snack_message.dart';


class RegisterHealthViewModel{



  bool validateFields(RegisterHealthController controller,BuildContext context){

    if (isNull(controller.bloodType)) {
      SnackMessage().showSnack(context, "Tipo sanguíneo em branco");
      return false;
    }

    if (controller.havePlane) {
        if (isNull(controller.operator)) {
          SnackMessage().showSnack(context, "Número da Operadora em branco");
          return false;
        } else {
        if (controller.operator.length < 2) {
          SnackMessage().showSnack(context, "Número da Operadora inválido");
          return false;
        }
      }

      if (isNull(controller.numberCard)) {
        SnackMessage().showSnack(context, "Número da Carteirinha em branco");
        return false;

      } else {
        if (controller.numberCard.length < 2) {
          SnackMessage().showSnack(context, "Número da Carteirinha inválido");
          return false;
        }
      }

      if(controller.imagePlane == null){
        SnackMessage().showSnack(context, "Foto da Carteirinha em branco");
        return false;
      }

      if(controller.imagePlane!=null && controller.imagePlane.lengthSync()>2000000){
        SnackMessage().showSnack(context, "Tamanho da foto máximo 2MB");
        return false;
      }
    }
    return true;
  }
}