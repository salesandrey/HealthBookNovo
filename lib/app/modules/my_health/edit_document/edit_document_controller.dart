import 'dart:io';

import 'package:HealthBook/app/models/document_model.dart';
import 'package:HealthBook/app/services/pick_file_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'edit_document_controller.g.dart';

@Injectable()
class EditDocumentController = _EditDocumentControllerBase
    with _$EditDocumentController;

abstract class _EditDocumentControllerBase with Store {


  @observable
  DocumentModel currentDocument;

  @observable
  String nameDocument;

  @action
  void changeNameDocument(String value){
    nameDocument = value;
  }

  @observable
  String currentType;

  @action
  void changeCurrentType(String value){
    currentType = value;
  }

  @observable
  String dateDocument;

  @action
  void changeDateDocument(String value){
    dateDocument = value;
  }

  @observable
  String observations;

  @action
  void changeObservations(String value){
    observations = value;
  }

  @observable
  File document;

  @observable
  String documentURL;

  @action
  void changeDocumentURL(String value){
    documentURL = value;
  }

  @action
  Future<void> getDocument() async {
    document = await PickFileService().takeFileResults();
  }


}
