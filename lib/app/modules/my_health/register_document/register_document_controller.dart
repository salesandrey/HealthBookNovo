import 'dart:io';

import 'package:HealthBook/app/models/document_model.dart';
import 'package:HealthBook/app/repositories/document_repository.dart';
import 'package:HealthBook/app/repositories/upload_image_repository.dart';
import 'package:HealthBook/app/services/pick_file_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/utils/time_convert.dart';

part 'register_document_controller.g.dart';

@Injectable()
class RegisterDocumentController = _RegisterDocumentControllerBase
    with _$RegisterDocumentController;

abstract class _RegisterDocumentControllerBase with Store {

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  String idUser;

  @action
  void changeIdUser(String value){
    idUser = value;
  }

  @observable
  String name;

  @action
  void changeName(String value){
    name = value;
  }

  @observable
  String type = "Selecione o tipo";

  @action
  void changeType(String value){
    type = value;
  }

  @observable
  String dateDocument = "";

  @action
  void changeDateDocument(String value){
    dateDocument = value;
  }

  @observable
  String observations = "";

  @action
  void changeObservations(String value){
    observations = value;
  }

  @observable
  File document;


  @action
  Future<void> pickFile()async{
    document = await PickFileService().takeFileResults();
  }

  @action
  Future<void> saveData()async{

    DocumentModel model = DocumentModel(
      patient: idUser,
      isParent: "1",
      title: name,
      url: "",
      category: type,
      createdOn: TimeConvert().convertStringBrazilToDateTime(dateDocument),
      obs: observations
    );

    String idDocument = await DocumentRepository().insert(model);
    String documentURL = await UploadImageRepository().upload(document,"${idDocument}_document.pdf");

    DocumentModel newModel = DocumentModel(
        id: idDocument,
        active: "1",
        patient: idUser,
        isParent: "1",
        title: name,
        url: documentURL.substring(38),
        category: type,
        createdOn: TimeConvert().convertStringBrazilToDateTime(dateDocument),
        obs: observations
    );
    await DocumentRepository().update(newModel);
  }
}
