import 'package:flutter/material.dart';
import 'package:HealthBook/app/modules/medicine/register_medicine/register_medicine_controller.dart';
import 'package:HealthBook/app/utils/snack_message.dart';
import 'package:validators/validators.dart';

class MedicineViewModel{

  bool validateFields(BuildContext context,RegisterMedicineController controller){

    if (isNull(controller.nameMedicine)) {
      SnackMessage().showSnack(context, "Nome do medicamento em branco");
      return false;
    } else {
      if (controller.nameMedicine.length < 2) {
        SnackMessage().showSnack(context, "Nome do medicamento inválido");
        return false;
      }
    }

    if (isNull(controller.dosage.toString())) {
      SnackMessage().showSnack(context, "Dosagem em branco");
      return false;
    } else {
      if (controller.dosage <=0) {
        SnackMessage().showSnack(context, "Dosagem inválida");
        return false;
      }
    }

    if (isNull(controller.dosage.toString())) {
      SnackMessage().showSnack(context, "Dosagem em branco");
      return false;
    } else {
      if (controller.dosage <=0) {
        SnackMessage().showSnack(context, "Dosagem inválida");
        return false;
      }
    }

    if (isNull(controller.timeMedicine)) {
      SnackMessage().showSnack(context, "Horário do medicamento em branco");
      return false;
    }


    if (controller.imageDoc==null) {
      SnackMessage().showSnack(context, "Imagem do medicamento em branco");
      return false;
    } else {
      if (controller.imageDoc!=null && controller.imageDoc.lengthSync()>2000000) {
        SnackMessage().showSnack(context, "Imagem deve ter no máximo 2MB");
        return false;
      }
    }

    return true;
  }



}