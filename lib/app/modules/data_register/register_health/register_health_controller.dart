import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/componentes/TileDisease/tile_disease_model.dart';
import 'package:HealthBook/app/componentes/TileDisease/tile_disease_page.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/interfaces/pick_picture_interface.dart';
import 'package:HealthBook/app/modules/data_register/register_info/register_info_controller.dart';
import 'package:HealthBook/app/repositories/upload_image_repository.dart';
import 'package:HealthBook/app/repositories/patient_repository.dart';
import 'package:HealthBook/app/models/disease_model.dart';
import 'package:HealthBook/app/repositories/disease_repository.dart';
import 'package:HealthBook/app/models/health_plane_model.dart';
import 'package:HealthBook/app/repositories/health_plane_repository.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'dart:io';


part 'register_health_controller.g.dart';

@Injectable()
class RegisterHealthController = _RegisterHealthControllerBase
    with _$RegisterHealthController;

abstract class _RegisterHealthControllerBase with Store {

  _RegisterHealthControllerBase({this.currentUser,this.pickPicture,this.registerInfoController});

  RegisterInfoController registerInfoController;


  IPickPicture pickPicture;

  @observable
  UserModel currentUser;

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  String bloodType = "";

  @action
  void changeBloodType(String value){
    bloodType = value;
  }


  @observable
  ObservableList<TileDiseaseWidget> diseases = ObservableList<TileDiseaseWidget>();

  List<String> diseasesOptions = [
    "Alzheimer", "Asma",
    "AVC", "Cancêr",
    "Depressão", "Diabetes", "Outros"
  ];

  @action
  void createDiseases(){
    diseases.add(TileDiseaseWidget(tileDisease: TileDiseaseModel(title: "Nenhuma",check: false,changeAnother: (){changeNothing(0);})));
    diseasesOptions.forEach((e) =>
        diseases.add(TileDiseaseWidget(tileDisease: TileDiseaseModel(title: e,check: false, changeAnother: (){changeOthers(0);}))));
  }

  @action
  void changeNothing(int index){
    diseases.forEach((element) {
      if (diseases.elementAt(index) != element)
        element.tileDisease.changeOther(false);
    });
  }

  @action
  void changeOthers(int index){
    diseases[0].tileDisease.changeOther(false);
  }


  @observable
  bool connectSUS = false;

  @action
  void changeConnectSUS(bool value){
    connectSUS = value;
  }

  @observable
  bool havePlane = false;

  @action
  void changeHavePlane(bool value){
    havePlane = value;
  }

  @observable
  String operator;

  @action
  void changeOperator(String value){
    operator = value;
  }

  @observable
  File imagePlane;

  @action
  Future<void> takePhoto() async{
    imagePlane = await pickPicture.takePhotoCamera();
  }

  @observable
  String numberCard;

  @action
  void changeNumberCard(String value){
    numberCard = value;
  }

  @action
  Future<void> saveData() async{

    String imageURL,imageDOC1, imageDOC2;
    imageURL = await UploadImageRepository().upload(registerInfoController.image, "${currentUser.id}_photo.jpg");

    if (registerInfoController.docFront != null) {
      imageDOC1 = await UploadImageRepository().upload(
          registerInfoController.docFront, "${currentUser.id}_photo_document_front.jpg");
    }

    if (registerInfoController.docBack != null) {
      imageDOC2 = await UploadImageRepository().upload(
          registerInfoController.docBack, "${currentUser.id}_photo_document_back.jpg");
    }

    UserModel model = UserModel(
        id: currentUser.id,
        name: registerInfoController.name,
        username: registerInfoController.name,
        email: currentUser.email,
        password: currentUser.password,
        cpf: currentUser.cpf,
        birthdate: TimeConvert().convertStringBrazilToDateTime(registerInfoController.dateBirthday),
        sex: registerInfoController.sex,
        bloodgroup: bloodType,
        photo: imageURL.substring(38),
        docphoto1: registerInfoController.docFront == null ? "" : imageDOC1.substring(38),
        docphoto2: registerInfoController.docBack == null ? "" : imageDOC2.substring(38),
        mobilenumber: registerInfoController.cellphone,
        phone: registerInfoController.phone == null ? "" : registerInfoController.phone,
        cep: "",
        address: registerInfoController.address,
        address2: registerInfoController.complement == null ? "" : registerInfoController.complement,
        addressnumber: registerInfoController.numberHouse,
        neigh: registerInfoController.neigh,
        city: registerInfoController.city,
        district: registerInfoController.uf,
        active: "1");

    await PatientRepository().update(model);
    await saveDisease();
    await savePlaneHealth();
  }

  @action
  Future<void> saveDisease() async{
    diseasesOptions.forEach((element) async {
      DiseaseModel model = DiseaseModel(name: element,patientId: currentUser.id,isParent: "1");
      await DiseaseRepository().insert(model);
    });

    List<DiseaseModel> newList = await DiseaseRepository().get(currentUser.id, "1");

    diseases.where((element) => !element.tileDisease.check).forEach((element) {
      newList.where((value) => element.tileDisease.title==value.name).forEach((valueID) async {
        DiseaseModel model = DiseaseModel(
            id: valueID.id,
            active: "0",
            isParent: "1",
            patientId: valueID.patientId,
            name: valueID.name
        );
        await DiseaseRepository().update(model);
      });
    });
  }

  @action
  Future<void> savePlaneHealth() async{

    if(havePlane) {
      String imageURL = await UploadImageRepository().upload(
          imagePlane, "${currentUser.id}_photo_health_plane.jpg");

      HealthPlaneModel healthPlane = HealthPlaneModel(
          isParent: "true",
          name: operator,
          number: numberCard,
          photo: imageURL.substring(38),
          sus: connectSUS ? "true" : "false");

      await HealthPlaneRepository().insert(healthPlane, currentUser.id);
    } else {

      HealthPlaneModel healthPlane = HealthPlaneModel(
          isParent: "true",
          name: "",
          number: "",
          photo: "",
          sus: connectSUS ? "true" : "false");
      await HealthPlaneRepository().insert(healthPlane, currentUser.id);
    }
  }
}
