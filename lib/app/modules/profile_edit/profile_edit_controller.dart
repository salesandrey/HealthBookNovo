import 'dart:io';
import 'package:HealthBook/app/componentes/TileDisease/tile_disease_model.dart';
import 'package:HealthBook/app/componentes/TileDisease/tile_disease_page.dart';
import 'package:HealthBook/app/models/disease_model.dart';
import 'package:HealthBook/app/models/health_plane_model.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/repositories/disease_repository.dart';
import 'package:HealthBook/app/repositories/health_plane_repository.dart';
import 'package:HealthBook/app/repositories/patient_repository.dart';
import 'package:HealthBook/app/repositories/upload_image_repository.dart';
import 'package:HealthBook/app/services/pick_picture_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/interfaces/local_storage_interface.dart';
part 'profile_edit_controller.g.dart';

@Injectable()
class ProfileEditController = _ProfileEditControllerBase with _$ProfileEditController;

abstract class _ProfileEditControllerBase with Store {

  _ProfileEditControllerBase({this.storage});

  @observable
  ILocalStorage storage;

  @observable
  ObservableList<DiseaseModel> diseases;

  @observable
  ObservableList<HealthPlaneModel> healthPlane;


  @action
  Future<void> getDiseases() async {
    List<DiseaseModel> list =  await DiseaseRepository().get(currentUser.id, "1");
    if(list.isEmpty) {
      diseases = null;
    }else{
      diseases = list.asObservable();
    }
  }

  @action
  Future<void> getHealthPlan() async{
    List<HealthPlaneModel> list =  await HealthPlaneRepository().get(currentUser.id, "true");
    if(list.isEmpty) {
      healthPlane = null;
    }else{
      healthPlane = list.asObservable();
    }
  }


  @observable
  bool loading = false;


  @action
  void changeLoading(bool value){
    loading = value;
  }


  @observable
  UserModel currentUser;

  @action
  Future<void> getCurrentUser() async{
    String email = await storage.get("email");
    currentUser = await PatientRepository().get(email);
    if(currentUser!=null){
      await getDiseases();
      await getHealthPlan();
    }

  }

  @observable
  File currentImage;

  @observable
  String phone;

  @action
  void changePhone(String value){
    phone = value;
  }

  @observable
  String cellphone;

  @action
  void changeCellphone(String value){
    cellphone = value;
  }

  @observable
  String address;

  @action
  void changeAddress(String value){
    address = value;
  }

  @observable
  String neighborhood;

  @action
  void changeNeighborhood(String value){
    neighborhood = value;
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
  void changeUf(String value){
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
  Future<void> takePicture() async{
    currentImage = await PickPictureService().takePhotoCamera();
  }

  @action
  Future<void> takeFromGallery() async {
    currentImage = await PickPictureService().takePhotoGallery();
  }

  @observable
  String bloodGroup;

  @action
  void changeBloodGroup(String value){
    bloodGroup = value;
  }



  @observable
  ObservableList<TileDiseaseWidget> diseasesTile = ObservableList<TileDiseaseWidget>();

  List<String> diseasesOptions = [
    "Alzheimer", "Asma",
    "AVC", "Cancêr",
    "Depressão", "Diabetes", "Outros"
  ];

  @action
  void changeNothing(int index){
    diseasesTile.forEach((element) {
      if (diseasesTile.elementAt(index) != element)
        element.tileDisease.changeOther(false);
    });
  }

  @action
  void changeOthers(int index){
    diseasesTile[0].tileDisease.changeOther(false);
  }

  @action
  void createDiseaseTile(){
    diseasesTile.add(TileDiseaseWidget(tileDisease: TileDiseaseModel(title: "Nenhuma",check: false,changeAnother: (){changeNothing(0);})));
    diseasesOptions.forEach((e) =>
        diseasesTile.add(TileDiseaseWidget(tileDisease: TileDiseaseModel(title: e,check: false, changeAnother: (){changeOthers(0);}))));
    if(diseases!=null){
      diseases.where((element) => element.active=="1").forEach((element) {
        diseasesTile.where((newElement) => element.name==newElement.tileDisease.title).forEach((value) {
          value.tileDisease.changeOther(true);
        });
      });
    }
  }

  @observable
  bool connectSUS = false;

  @action
  void changeConnectSUS(bool value){
    connectSUS = value;
  }

  @observable
  bool haveHealthPlane = false;

  @action
  void changeHaveHealthPlane(bool value){
    haveHealthPlane = value;
  }

  @observable
  String operation;

  @action
  void changeOperation(String value){
    operation = value;
  }

  @observable
  String numberCard;

  @action
  void changeNumberCard(String value){
    numberCard = value;
  }

  @observable
  File cardFile;

  @action
  Future<void> changeCardFile() async{
    cardFile = await PickPictureService().takePhotoGallery();
  }

  @action
  Future<void> saveData() async {

    String imagePath;

    if(currentImage!=null){
      imagePath = await UploadImageRepository().upload(currentImage,"${currentUser.id}_photo.jpg");
    }

    UserModel userUpdate = UserModel(
        address: address,
        id: currentUser.id,
        name: currentUser.name,
        username: currentUser.username,
        city: city,
        email: currentUser.email,
        password: currentUser.password,
        address2: complement,
        active: currentUser.active,
        neigh: neighborhood,
        bloodgroup: bloodGroup,
        cep: currentUser.cep,
        district: uf,
        cpf: currentUser.cpf,
        docphoto1: currentUser.docphoto1,
        docphoto2: currentUser.docphoto2,
        addressnumber: numberHouse,
        phone: phone==null? "" : phone,
        sex: currentUser.sex,
        photo: imagePath!=null ? imagePath.substring(38) : currentUser.photo,
        mobilenumber: cellphone,
        birthdate: currentUser.birthdate
    );

    await PatientRepository().updateNew(userUpdate);
    await updateHealthPlane();
    await updateDiseases();
  }


  @action
  Future<void> updateDiseases() async {
    diseases.forEach((value) {
      diseasesTile.where((element) => element.tileDisease.title==value.name).forEach((element) async {
        DiseaseModel model = DiseaseModel(isParent: "1",
            name: value.name,
            patientId: value.patientId,
            active: element.tileDisease.check? "1" : "0",
            id: value.id);
        await DiseaseRepository().update(model);
      });
    });
  }

  @action
  Future<void> updateHealthPlane() async{

    String cardFileString;

    if(haveHealthPlane) {
      if (cardFile != null) {
        cardFileString = await UploadImageRepository().upload(
            cardFile, "${currentUser.id}_photo_health_plane.jpg");
      }

      healthPlane.forEach((element) async {
        HealthPlaneModel model = HealthPlaneModel(
            sus: connectSUS ? "true" : "false",
            number: numberCard,
            name: operation,
            photo: cardFileString == null ? element.photo : cardFileString,
            id: element.id,
            isParent: element.isParent,
            active: "1",
            parentId: element.parentId
        );
        await HealthPlaneRepository().update(model, currentUser.id);
      });
    } else {

      healthPlane.forEach((element) async {
        HealthPlaneModel model = HealthPlaneModel(
            sus: connectSUS ? "true" : "false",
            number: "",
            name: "",
            photo: "",
            id: element.id,
            isParent: element.isParent,
            active: "1",
            parentId: element.parentId
        );
        await HealthPlaneRepository().update(model, currentUser.id);
      });

    }



  }

}
