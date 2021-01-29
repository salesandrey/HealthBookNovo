

import 'package:flutter/material.dart';
import 'package:HealthBook/app/modules/profile_edit/profile_edit_controller.dart';
import 'package:validators/validators.dart';
import 'package:HealthBook/app/utils/snack_message.dart';


class EditViewModel{


  bool validateFields(BuildContext context, ProfileEditController controller){

    //----------Validação do Campo Telefone-----------//
    if (isNull(controller.phone)) {

    } else {
      if (controller.phone.length < 14) {
        SnackMessage().showSnack(context, "Telefone residencial inválido");
        return false;
      }
    }

    //----------Validação do Campo Celular-----------//
    if (isNull(controller.cellphone)) {
      SnackMessage().showSnack(context, "Número de celular em branco");
      return false;
    } else {
      if (controller.cellphone.length < 15) {
        SnackMessage().showSnack(context, "Número de celular inválido");
        return false;
      }
    }

    //----------Validação do Campo City-----------//
    if (isNull(controller.city)) {
      SnackMessage().showSnack(context, "Cidade em branco");
      return false;
    } else {
      if (controller.city.length < 2) {
        SnackMessage().showSnack(context, "Cidade inválida");
        return false;
      }
    }

    //----------Validação do Campo Bairro-----------//
    if (isNull(controller.neighborhood)) {
      SnackMessage().showSnack(context, "Bairro em branco");
      return false;
    } else {
      if (controller.neighborhood.length < 2) {
        SnackMessage().showSnack(context, "Bairro inválido");
        return false;
      }
    }


    if (isNull(controller.complement)) {

    } else {
      if (controller.complement.length < 2) {
        SnackMessage().showSnack(context, "Complemento inválido");
        return false;
      }
    }


    if (isNull(controller.numberHouse)) {
      SnackMessage().showSnack(context, "Número da Casa em branco");
      return false;
    } else {
      if (!isInt(controller.numberHouse)) {
        SnackMessage().showSnack(context, "Número da Casa inválido");
        return false;
      }
    }

    if (controller.currentImage == null && controller.currentUser.photo=="") {
      SnackMessage().showSnack(context, "Foto de Perfil Obrigatória");
      return false;
    }

    if(controller.currentImage!=null && controller.currentImage.lengthSync()>2000000){
      SnackMessage().showSnack(context, "Tamanho da foto máximo 2MB");
      return false;
    }


    if (isNull(controller.address)) {
      SnackMessage().showSnack(context, "Endereço em branco");
      return false;

    } else {
      if (controller.address.length < 10) {
        SnackMessage().showSnack(context, "Endereço inválido");
        return false;
      }
    }

    if (isNull(controller.uf)) {
      SnackMessage().showSnack(context, "Campo UF em branco");
      return false;
    }

    if (isNull(controller.bloodGroup)) {
      SnackMessage().showSnack(context, "Tipo sanguíneo em branco");
      return false;
    }

    if (controller.haveHealthPlane) {
      if (isNull(controller.operation)) {
        SnackMessage().showSnack(context, "Número da Operadora em branco");
        return false;
      } else {
        if (controller.operation.length < 2) {
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

      if(controller.cardFile == null && controller.healthPlane[0].photo==""){
        SnackMessage().showSnack(context, "Foto da Carteirinha em branco");
        return false;
      }

      if(controller.cardFile!=null && controller.cardFile.lengthSync()>2000000){
        SnackMessage().showSnack(context, "Tamanho da foto máximo 2MB");
        return false;
      }
    }




    return true;
  }




}