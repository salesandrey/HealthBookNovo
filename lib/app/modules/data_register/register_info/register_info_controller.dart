import 'dart:io';

import 'package:HealthBook/app/interfaces/pick_picture_interface.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:mobx/mobx.dart';

part 'register_info_controller.g.dart';


class RegisterInfoController = _RegisterInfoControllerBase
    with _$RegisterInfoController;

abstract class _RegisterInfoControllerBase with Store {

  _RegisterInfoControllerBase({this.currentUser,this.pickPicture});


  UserModel currentUser;

  IPickPicture pickPicture;

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  File image;

  @observable
  File docFront;

  @observable
  File docBack;

  @observable
  String name;

  @action
  void changeName(String value){
    name = value;
  }

  @observable
  String cpf;

  @action
  void changeCPF(String value){
    cpf = value;
  }

  @observable
  String dateBirthday;

  @action
  void changeDateBirthday(String value){
    dateBirthday = value;
  }

  @observable
  String sex;

  @action
  void changeSex(String value){
    sex = value;
  }

  @observable
  String cellphone;

  @action
  void changeCellphone(String value){
    cellphone = value;
  }

  @observable
  String phone;

  @action
  void changePhone(String value){
    phone = value;
  }

  @observable
  String address;

  @action
  void changeAddress(String value){
    address = value;
  }

  @observable
  String neigh;

  @action
  void changeNeigh(String value){
    neigh = value;
  }

  @observable
  String city;

  @action
  void changeCity(String value){
    city = value;
  }

  @observable
  String uf;

  @action
  void changeUF(String value){
    uf = value;
  }

  @observable
  String numberHouse;

  @action
  void changeNumberHouse(String value){
    numberHouse = value;
  }

  @observable
  String complement;

  @action
  void changeComplement(String value){
    complement = value;
  }

  @action
  Future<void> takePicture(String type) async{
    switch(type){
      case "photoUser":
        image = await pickPicture.takePhotoCamera();
        break;
      case "docFront":
        docFront = await pickPicture.takePhotoCamera();
        break;
      case "docBack":
        docBack = await pickPicture.takePhotoCamera();
        break;
    }
  }

  @action
  Future<void> useFromGallery(String type)async{
    switch(type){
      case "photoUser":
        image = await pickPicture.takePhotoGallery();
        break;
      case "docFront":
        docFront = await pickPicture.takePhotoGallery();
        break;
      case "docBack":
        docBack = await pickPicture.takePhotoGallery();
        break;
    }
  }
}
