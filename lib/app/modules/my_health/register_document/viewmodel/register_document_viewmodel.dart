
import 'package:HealthBook/app/modules/my_health/register_document/register_document_controller.dart';
import 'package:flutter/material.dart';
import 'package:HealthBook/app/utils/snack_message.dart';
import 'package:validators/validators.dart';

class RegisterDocumentViewModel{



  bool validateFields(BuildContext context,RegisterDocumentController controller){

    if (isNull(controller.name)) {
      SnackMessage().showSnack(context, "Nome do documento em branco");
      return false;
    } else {
      if (controller.name.length < 2) {
        SnackMessage().showSnack(context, "Nome do documento inválido");
        return false;
      }
    }

    if (isNull(controller.type)) {
      SnackMessage().showSnack(context, "Tipo de documento em branco");
      return false;
    }

    if (isNull(controller.dateDocument)) {
      SnackMessage().showSnack(context, "Data do documento em branco");
      return false;

    } else {
      if (controller.dateDocument.length < 10) {
        SnackMessage().showSnack(context, "Data do documento inválida");
        return false;
      }
    }

    if (controller.document == null) {
      SnackMessage().showSnack(context, "Documento Obrigatório");
      return false;
    }

    if(controller.document!=null && controller.document.lengthSync()>2000000){
      SnackMessage().showSnack(context, "Tamanho do documento máximo 2MB");
      return false;
    }



    return true;
  }
}