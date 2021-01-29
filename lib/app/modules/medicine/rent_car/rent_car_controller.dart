import 'package:HealthBook/app/models/document_model.dart';
import 'package:HealthBook/app/models/patient_medicine_model.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/repositories/document_repository.dart';
import 'package:HealthBook/app/repositories/patient_medicine_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/modules/medicine/car_store/car_store.dart';

part 'rent_car_controller.g.dart';

@Injectable()
class RentCarController = _RentCarControllerBase with _$RentCarController;

abstract class _RentCarControllerBase with Store {


  _RentCarControllerBase({this.car});

  CarStore car;

  @action
  void addMedicineToCar(PatientMedicineModel model){
    car.addMedicine(model);
  }

  @action
  void addDocumentToCar(DocumentModel model){
    car.addDocument(model);
  }

  @observable
  UserModel currentUser;

  @action
  void changeCurrentUser(UserModel user){
    currentUser = user;
  }

  @observable
  int selectSegmented = 0;

  @action
  void changeSegmented(int value){
    selectSegmented = value;
  }

  @observable
  String typeProduct;

  @action
  void changeTypeProduct(String value){
    typeProduct = value;
  }

  @observable
  String filterSegment1 = "";

  @action
  void changeFilterSegment1(String value){
    filterSegment1 = value;
    print(filterSegment1);
  }

  @observable
  String filterSegment2 = "";

  @action
  void changeFilterSegment2(String value){
    filterSegment2 = value;
    print(filterSegment2);
  }

  @observable
  ObservableList<PatientMedicineModel> medicines;

  @computed
  List<PatientMedicineModel> get filteredMedicines{
    if(medicines==null){
      return null;
    }else{
      return medicines.where((element) => element.name.toLowerCase().contains(filterSegment1.toLowerCase())).toList();
    }
  }

  @action
  Future<void> getMedicines() async{
    List<PatientMedicineModel> list =  await PatientMedicineRepository().get(currentUser.id, "1");
    if(list.isEmpty) {
      medicines = null;
    }else{
      medicines = list.asObservable();
    }
  }

  @observable
  ObservableList<DocumentModel> documents;

  @computed
  List<DocumentModel> get filteredDocuments{
    if(documents==null){
      return null;
    }else{
      return documents.where((element) => element.title.toLowerCase().contains(filterSegment2.toLowerCase())).toList();
    }
  }

  @action
  Future<void> getDocuments() async{
    List<DocumentModel> list =  await DocumentRepository().get(currentUser.id, "1");
    if(list.isEmpty) {
      documents = null;
    }else{
      documents = list.asObservable();
    }
  }
}
