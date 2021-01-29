import 'dart:convert';
import 'package:HealthBook/app/models/patient_medicine_model.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:http/http.dart';

class PatientMedicineRepository{

  Future<List<PatientMedicineModel>> get(String patientID, String isParent) async {

    String url ="https://health.lanconi.com.br/api/patientmedicine/get";
    Map<String,dynamic> patientMedicine = Map<String,dynamic>();
    patientMedicine["patientID"] = patientID;
    patientMedicine["isParent"] = isParent;

    Response response = await post(url,body: patientMedicine);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      if(data["status"]=="Error"){
        return [];
      }
      List<dynamic> list = data["data"];
      List<PatientMedicineModel> medicines = list.map((value) => PatientMedicineModel.fromMap(value)).toList();
      medicines.removeWhere((element) => element.active=="0");
      return medicines;
    }else{
      print(response.statusCode);
      return null;
    }

  }

  Future<dynamic> insert(PatientMedicineModel model) async {
    String url ="https://health.lanconi.com.br/api/patientmedicine/insert";

    Map<String,dynamic> patientMedicine = Map<String,dynamic>();
    patientMedicine["patientID"] = model.patientId;
    patientMedicine["medicineID"] = model.medicineId;
    patientMedicine["time"] = model.time;
    patientMedicine["isParent"] = model.isParent;
    patientMedicine["name"] = model.name;
    patientMedicine["dosage"] = model.dosage;
    patientMedicine["createdOn"] =TimeConvert().convertTimeToDataBase(model.createdOn);
    patientMedicine["filename"] = model.filename;
    patientMedicine["continuo"] = model.continuo;
    patientMedicine["initDate"] =  model.initDate==null? "":TimeConvert().convertTimeToDataBase(model.initDate);
    patientMedicine["endDate"] = model.endDate==null? "": TimeConvert().convertTimeToDataBase(model.endDate);
    patientMedicine["qtd"] = model.qtd==null? "": model.qtd;
    patientMedicine["useDays"] = model.useDays;
    patientMedicine["notify"] = model.notify;

    Response response = await post(url,body: patientMedicine);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);
      return data;

    }else{
      print(response.statusCode);
      return null;
    }
  }


  Future<dynamic> update(PatientMedicineModel model,String activate) async {
    String url ="https://health.lanconi.com.br/api/patientmedicine/update";

    Map<String,dynamic> patientMedicine = Map<String,dynamic>();
    patientMedicine["id"] = model.id;
    patientMedicine["patientID"] = model.patientId;
    patientMedicine["medicineID"] = model.medicineId;
    patientMedicine["isParent"] = model.isParent;
    patientMedicine["time"] = model.time;
    patientMedicine["name"] = model.name;
    patientMedicine["dosage"] = model.dosage;
    patientMedicine["createdOn"] = TimeConvert().convertTimeToDataBase(model.createdOn);
    patientMedicine["filename"] = model.filename;
    patientMedicine["continuo"] = model.continuo;
    patientMedicine["initDate"] =  model.initDate==null? "":TimeConvert().convertTimeToDataBase(model.initDate);
    patientMedicine["endDate"] = model.endDate==null? "": TimeConvert().convertTimeToDataBase(model.endDate);
    patientMedicine["qtd"] = model.qtd==null? "": model.qtd;
    patientMedicine["useDays"] = model.useDays;
    patientMedicine["notify"] = model.notify;
    patientMedicine["active"] = activate;

    print(patientMedicine);
    
    Response response = await post(url,body: patientMedicine);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);
      return data;
    }else{
      print(response.statusCode);
      return null;
    }
  }
}