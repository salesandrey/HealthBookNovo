import 'dart:io';

import 'package:HealthBook/app/interfaces/local_storage_interface.dart';
import 'package:HealthBook/app/models/dependent_model.dart';
import 'package:HealthBook/app/repositories/dependent_repository.dart';
import 'package:HealthBook/app/repositories/upload_image_repository.dart';
import 'package:HealthBook/app/services/pick_picture_service.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'register_family_controller.g.dart';

@Injectable()
class RegisterFamilyController = _RegisterFamilyControllerBase
    with _$RegisterFamilyController;

abstract class _RegisterFamilyControllerBase with Store {


  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = false;
  }

  @observable
  String name;

  @observable
  String nameFeedback;

  @observable
  bool nameValidator = false;

  @observable
  String cpf;

  @observable
  String cpfFeedback;

  @observable
  bool cpfValidator = false;

  @observable
  String dateBirthDay;

  @observable
  String dateBirthDayFeedback;

  @observable
  bool  dateBirthDayValidator = false;

  @observable
  String sex;

  @observable
  bool sexValidator = false;

  @observable
  String kinship = "";

  @observable
  bool kinshipValidator = false;

  @observable
  File documentImage;

  @observable
  bool documentImageValidator = false;

  @action
  void changeDocumentImageValidator(bool value){
    documentImageValidator = value;
  }

  @action
  void changeName(String value){
    name = value;
  }
  @action
  void changeNameFeedback(String value){
    nameFeedback = value;
  }
  @action
  void changeNameValidator(bool value){
    nameValidator = value;
  }

  @action
  void changeCPF(String value){
    cpf = value;
  }

  @action
  void changeCPFFeedback(String value){
    cpfFeedback = value;
  }

  @action
  void changeCPFValidator(bool value){
    cpfValidator = value;
  }

  @action
  void changeDateBirthday(String value){
    dateBirthDay = value;
  }

  @action
  void changeDateBirthdayFeedback(String value){
    dateBirthDayFeedback = value;
  }

  @action
  void changeDateBirthdayValidator(bool value){
    dateBirthDayValidator = value;
  }

  @action
  void changeSex(String value){
    sex = value;
  }

  @action
  void changeSexValidate(bool value){
    sexValidator = value;
  }

  @action
  void changeKinship(String value){
    kinship = value;
  }

  @action
  void changeKinshipValidator(bool value){
    kinshipValidator = value;
  }

  @observable
  bool hasLegalRepresentative = false;

  @observable
  String emailLegalRepresentative = "";

  @observable
  String emailLegalRepresentativeFeedback = "";

  @observable
  bool emailLegalRepresentativeValidate = false;

  @action
  void changeHasLegalRepresentative(bool value){
    hasLegalRepresentative = value;
  }

  @action
  void changeEmailLegalRepresentative(String value){
    emailLegalRepresentative = value;
  }

  @action
  void changeEmailLegalRepresentativeFeedback(String value){
    emailLegalRepresentativeFeedback = value;
  }

  @action
  void changeEmailLegalRepresentativeValidate(bool value){
    emailLegalRepresentativeValidate = value;
  }

  void takePhoto() async{
    documentImage = await PickPictureService().takePhotoGallery();
  }

  Future<void> saveFamilyData() async{
    ILocalStorage storage = SharedLocalStorageService();
    String parentID = await storage.get("id");
    DependentModel dependent = DependentModel(
        parentID: parentID,
        fullName: name,
        cpf: cpf,
        birthday: TimeConvert().convertTimeToString(dateBirthDay) ,
        sex: sex,
        type: kinship,
        photo: "");

    dynamic data = await DependentRepository().insert(dependent);

    String imageURL = await UploadImageRepository().upload(documentImage,"${data["data"]["id"]}_photo_document_dependent.jpg");

    DependentModel dependentUpdate = DependentModel(
        id: data["data"]["id"].toString(),
        parentID: parentID,
        fullName: name,
        cpf: cpf,
        birthday: TimeConvert().convertTimeToString(dateBirthDay),
        sex: sex,
        type: kinship,
        photo: imageURL.substring(38));

    await DependentRepository().update(dependentUpdate);
  }

}
