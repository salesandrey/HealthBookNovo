
import 'package:flutter/material.dart';
import 'package:HealthBook/app/modules/data_register/register_info/register_info_controller.dart';
import 'package:validators/validators.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';

import 'package:HealthBook/app/utils/snack_message.dart';
class RegisterInfoValidatorViewModel {


  bool validatorFields(RegisterInfoController controller, BuildContext context) {

    //----------Validação do Campo Nome-----------//
    if (isNull(controller.name)) {
      SnackMessage().showSnack(context, "Nome em branco");
      return false;
    } else {
      if (controller.name.length < 2) {
        SnackMessage().showSnack(context, "Nome inválido");
        return false;
      }
    }
    //----------Validação do Campo CPF-----------//

    if (isNull(controller.cpf)) {
      SnackMessage().showSnack(context, "CPF em branco");
      return false;
    } else {
      if (!CPFValidator.isValid(CPFValidator.format(controller.cpf))) {
        SnackMessage().showSnack(context, "CPF inválido");
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
    if (isNull(controller.neigh)) {
      SnackMessage().showSnack(context, "Bairro em branco");
      return false;
    } else {
      if (controller.neigh.length < 2) {
        SnackMessage().showSnack(context, "Bairro inválido");
        return false;
      }
    }

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

    //----------Validação do Campo Complemento-----------//
    if (isNull(controller.complement)) {

    } else {
      if (controller.complement.length < 2) {
        SnackMessage().showSnack(context, "Complemento inválido");
        return false;
      }
    }

    //----------Validação do Campo NumberHouse-----------//
    if (isNull(controller.numberHouse)) {
      SnackMessage().showSnack(context, "Número da Casa em branco");
      return false;
    } else {
      if (!isInt(controller.numberHouse)) {
        SnackMessage().showSnack(context, "Número da Casa inválido");
        return false;
      }
    }

    //----------Validação do Campo Data de Nascimento-----------//
    if (isNull(controller.dateBirthday)) {
      SnackMessage().showSnack(context, "Data de Nascimento em branco");
      return false;
    } else {
      if (controller.dateBirthday.length < 10) {
        SnackMessage().showSnack(context, "Data de Nascimento inválida");
        return false;
      }
    }

    //----------Validação do Campo Address-----------//
    if (isNull(controller.address)) {
      SnackMessage().showSnack(context, "Endereço em branco");
      return false;
    } else {
      if (controller.address.length < 10) {
        SnackMessage().showSnack(context, "Endereço inválido");
        return false;
      }
    }

    //----------Validação do Campo Sexo-----------//
    if (isNull(controller.sex)) {
      SnackMessage().showSnack(context, "Campo Sexo em branco");
      return false;
    }
    //----------Validação do Campo UF-----------//
    if (isNull(controller.uf)) {
      SnackMessage().showSnack(context, "Campo UF em branco");
      return false;
    }
    //----------Validação do Campo Image-----------//
    if (controller.image == null) {
      SnackMessage().showSnack(context, "Foto de Perfil Obrigatória");
      return false;
    }

    if(controller.image!=null && controller.image.lengthSync()>2000000){
      SnackMessage().showSnack(context, "Tamanho da foto máximo 2MB");
      return false;
    }

    return true;
  }
}