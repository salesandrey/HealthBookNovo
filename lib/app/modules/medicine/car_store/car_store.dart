import 'package:HealthBook/app/models/document_model.dart';
import 'package:HealthBook/app/models/patient_medicine_model.dart';
import 'package:mobx/mobx.dart';
import 'package:HealthBook/app/models/estimate_product_model.dart';
part 'car_store.g.dart';

class CarStore = _CarStoreBase with _$CarStore;

abstract class _CarStoreBase with Store {

  @observable
  ObservableList<EstimateProductModel> car = ObservableList<EstimateProductModel>();

  @action
  void addMedicine(PatientMedicineModel medicine){
    EstimateProductModel model = EstimateProductModel(
        name: medicine.name,
        dosage: medicine.dosage,
        filename: medicine.filename,
        continuo: medicine.continuo,
        initDate: medicine.initDate,
        endDate: medicine.endDate,
        qtd: medicine.qtd,
        medicineId: medicine.id,
        useDays: medicine.useDays,
        notify: medicine.notify,
        createOnMedicine: medicine.createdOn,
        type: "Medicine",
        documentId: null,
        documentTitle: null,
        documentCategory: null,
        documentUrl: null,
        createOnDocument: null,
    );
    car.add(model);
  }

  @action
  void addDocument(DocumentModel document){
    EstimateProductModel model = EstimateProductModel(
      continuo: null,
      dosage: null,
      endDate: null,
      initDate: null,
      name: null,
      filename: null,
      useDays: null,
      qtd: null,
      notify: null,
      createOnMedicine: null,
      medicineId: null,
      documentUrl: document.url,
      documentCategory: document.category,
      documentTitle: document.title,
      documentId: document.id,
      createOnDocument: document.createdOn,
      type: "Document",
    );
    car.add(model);
  }

  @action
  void removeProduct(EstimateProductModel model){
    car.remove(model);
  }

  @action
  void cleanCar(){
    car.clear();
  }

}