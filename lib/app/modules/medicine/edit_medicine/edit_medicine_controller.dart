import 'dart:io';
import 'package:HealthBook/app/models/patient_medicine_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/sanitizers.dart';
import 'package:HealthBook/app/services/pick_picture_service.dart';
import 'package:HealthBook/app/repositories/upload_image_repository.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:HealthBook/app/repositories/patient_medicine_repository.dart';

part 'edit_medicine_controller.g.dart';

@Injectable()
class EditMedicineController = _EditMedicineControllerBase
    with _$EditMedicineController;

abstract class _EditMedicineControllerBase with Store {


  @observable
  PatientMedicineModel medicine;

  @action
  void changeMedicine(PatientMedicineModel value){
    medicine = value;
  }

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  File imageDoc;

  @action
  Future<void> changeImageDoc() async{
    imageDoc = await PickPictureService().takePhotoGallery();
  }

  @observable
  String dateRegister = TimeConvert().convertTimeToStringBrazilFormat(DateTime.now());

  @observable
  String nameMedicine = "";

  @action
  void changeNameMedicine(String value){
    nameMedicine = value;
  }

  @observable
  int dosage;

  @action
  void changeDosage(String value){
    if(value!=null && value !='')
      dosage = toInt(value.replaceAll("mg", ""));
  }

  @observable
  String timeMedicine;

  @action
  void changeTimeMedicine(String time){
    timeMedicine = time;
  }

  @observable
  String dateStart;

  @action
  void changeDateStart(String value){
    dateStart = value;
  }

  @observable
  String dateEnd;

  @action
  void changeDateEnd(String value){
    dateEnd = value;
  }

  @observable
  int numberPills;

  @action
  void changeNumberPills(String value){
    if(value!=null && value !='')
      numberPills = toInt(value);
  }

  @observable
  bool hasmedicineContinuing = false;

  @action
  void changeHasMedicineContinuing(bool value){
    hasmedicineContinuing = value;
  }

  @action
  Future<void> updateData() async{
    String imageURL;
    if(imageDoc!=null) {
      imageURL = await UploadImageRepository().upload(
          imageDoc, "${medicine.filename}");
    }

    PatientMedicineModel patientMedicineUpdate = PatientMedicineModel(
        id: medicine.id,
        patientId: medicine.patientId,
        medicineId: "0",
        isParent: "1",
        time: timeMedicine,
        name: nameMedicine,
        dosage: dosage.toString()+"mg",
        createdOn: TimeConvert().convertStringBrazilToDateTime(dateRegister),
        filename: imageURL==null? medicine.filename: imageURL.substring(38),
        continuo: hasmedicineContinuing.toString(),
        initDate: dateStart==null?null:TimeConvert().convertStringBrazilToDateTime(dateStart),
        endDate: dateEnd==null?null:TimeConvert().convertStringBrazilToDateTime(dateEnd),
        qtd: numberPills==null?null:numberPills.toString(),
        useDays: "1",
        notify: "true",
        active: "1");

    await PatientMedicineRepository().update(patientMedicineUpdate, "1");

  }
}
