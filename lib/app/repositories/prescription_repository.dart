import 'dart:convert';
import 'package:HealthBook/app/models/prescription_model.dart';
import 'package:http/http.dart';

class PrescriptionRepository {


  Future<void> get(String patientID, String parent) async {
    String url = "https://health.lanconi.com.br/api/prescription/get";

    Map<String, dynamic> prescription = Map<String, dynamic>();
    prescription["patientID"] = patientID;
    prescription["isParent"] = parent;

    Response response = await post(url, body: prescription);
    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      print(data);
    } else {
      print(response.statusCode);
    }
  }

  Future<void> insert(PrescriptionModel model) async {
    String url = "https://health.lanconi.com.br/api/prescription/insert";

    Map<String, dynamic> prescription = Map<String, dynamic>();
    prescription["date"] = model.date;
    prescription["patient"] = model.patient;
    prescription["isParent"] = model.isParent;
    prescription["doctor"] = model.doctor;
    prescription["symptom"] = model.symptom;
    prescription["advice"] = model.advice;
    prescription["state"] = model.state;
    prescription["medicine"] = model.medicine;
    prescription["validity"] = model.validity;
    prescription["note"] = model.note;
    prescription["patientname"] = model.patientName;
    prescription["doctorname"] = model.doctorName;
    prescription["isParent"] = model.isParent;
    prescription["hospitalID"] = model.hospitalID;
    prescription["active"] = model.active;
    prescription["createdOn"] = model.createdOn;

    Response response = await post(url, body: prescription);
    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      print(data);
    } else {
      print(response.statusCode);
    }
  }

  Future<void> update(PrescriptionModel model) async {
    String url = "https://health.lanconi.com.br/api/prescription/update";

    Map<String, dynamic> prescription = Map<String, dynamic>();
    prescription["date"] = model.date;
    prescription["patient"] = model.patient;
    prescription["isParent"] = model.isParent;
    prescription["doctor"] = model.doctor;
    prescription["symptom"] = model.symptom;
    prescription["advice"] = model.advice;
    prescription["state"] = model.state;
    prescription["medicine"] = model.medicine;
    prescription["validity"] = model.validity;
    prescription["note"] = model.note;
    prescription["patientname"] = model.patientName;
    prescription["doctorname"] = model.doctorName;
    prescription["isParent"] = model.isParent;
    prescription["hospitalID"] = model.hospitalID;
    prescription["active"] = model.active;
    prescription["createdOn"] = model.createdOn;

    Response response = await post(url, body: prescription);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      print(data);
    } else {
      print(response.statusCode);
    }
  }
}