import 'package:HealthBook/app/models/health_plane_model.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/repositories/patient_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/models/document_model.dart';
import 'package:HealthBook/app/repositories/document_repository.dart';
import 'package:HealthBook/app/models/disease_model.dart';
import 'package:HealthBook/app/interfaces/local_storage_interface.dart';

part 'my_health_controller.g.dart';


class MyHealthController = _MyHealthControllerBase with _$MyHealthController;

abstract class _MyHealthControllerBase with Store {

  _MyHealthControllerBase({this.storage});

  ILocalStorage storage;

  @observable
  UserModel currentUser;


  @action
  void changeCurrentUser(UserModel model){
    currentUser = model;
  }

  @action
  Future<void> getUser() async{
    String email = await storage.get("email");
    currentUser = await PatientRepository().get(email);
  }

  @observable
  ObservableList<DocumentModel> documents;

  @observable
  String filter = "";

  @action
  void changeFilter(String value){
    filter = value;
  }

  @computed
  List<DocumentModel> get filteredMedicine {
    if(documents==null){
      return null;
    }else{
      return documents.where((element) => element.title.toLowerCase().contains(filter.toLowerCase())).toList();
    }
  }

  @action
  Future<void> getDocuments() async{
    List<DocumentModel> list = await DocumentRepository().get(currentUser.id, "1");

    if(list.isEmpty) {
      documents = null;
    }else{
      documents = list.asObservable();
      print(documents);
    }
  }
  @action
  Future<void> removeDocument(DocumentModel docs) async{

    documents.removeWhere((element) => element.id==docs.id);
    DocumentModel updateModel = DocumentModel(
        createdOn: docs.createdOn,
        category: docs.category,
        obs: docs.obs,
        active: "0",
        url: docs.url,
        title: docs.title,
        isParent: docs.isParent,
        patient: docs.patient,
        id: docs.id
    );

    await DocumentRepository().update(updateModel);
  }
}
