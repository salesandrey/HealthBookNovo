
import 'package:HealthBook/app/modules/profile_edit/add_address/add_address_controller.dart';
import 'package:HealthBook/app/utils/snack_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';
import 'package:validators/validators.dart';

class AddressValidatorViewModel{


  bool validatorFields(AddAddressController controller,BuildContext context){

    if (isNull(controller.address)) {
      SnackMessage().showSnack(context, "Endereço em branco");
      return false;
    } else {
      if (controller.address.length < 5) {
        SnackMessage().showSnack(context, "Endereço inválido");
        return false;
      }
    }

    if (isNull(controller.cep)) {
      SnackMessage().showSnack(context, "CEP em branco");
      return false;
    } else {
      if (!Validator.cep(controller.cep)) {
        SnackMessage().showSnack(context, "CEP inválido");
        return false;
      }
    }

    if (isNull(controller.neighborhood)) {
      SnackMessage().showSnack(context, "Bairro em branco");
      return false;
    } else {
      if (controller.neighborhood.length < 2) {
        SnackMessage().showSnack(context, "Bairro inválido");
        return false;
      }
    }

    if (isNull(controller.city)) {
      SnackMessage().showSnack(context, "Cidade em branco");
      return false;
    } else {
      if (controller.city.length < 2) {
        SnackMessage().showSnack(context, "Cidade inválida");
        return false;
      }
    }

    if (isNull(controller.uf)) {
      SnackMessage().showSnack(context, "UF em branco");
      return false;
    } else {
      if (controller.city.length < 1) {
        SnackMessage().showSnack(context, "UF inválido");
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

    if (isNull(controller.complement)) {

    } else {
      if (controller.complement.length < 2) {
        SnackMessage().showSnack(context, "Complemento inválido");
        return false;
      }
    }



    return true;
  }
}