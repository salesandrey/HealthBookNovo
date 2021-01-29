
import 'dart:convert';
import 'package:HealthBook/app/models/disease_model.dart';
import 'package:http/http.dart';

class DiseaseRepository{

  Future<List<DiseaseModel>> get(String patientID, String isParent) async {

    String url ="https://health.lanconi.com.br/api/disease/get";


    Map<String,dynamic> disease = Map<String,dynamic>();
    disease['patientID'] = patientID;
    disease["isParent"] = isParent;

    Response response = await post(url,body: disease);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      if(data["status"]=="Error"){
        return [];
      }
      List<dynamic> list = data["data"];
      List<DiseaseModel> diseases = list.map((value) => DiseaseModel.fromMap(value)).toList();
      return diseases;
    }else{
      print(response.statusCode);
      return [];
    }
  }


  Future<void> insert(DiseaseModel model) async {
    String url ="https://health.lanconi.com.br/api/disease/insert";
    Map<String,dynamic> disease = Map<String,dynamic>();
    disease['patientID'] = model.patientId;
    disease["isParent"] = model.isParent;
    disease["name"] = model.name;

    Response response = await post(url,body: disease);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);

    }else{
      print(response.statusCode);
    }
  }

  Future<void> update(DiseaseModel model) async {

    String url ="https://health.lanconi.com.br/api/disease/update";
    Map<String,dynamic> disease = Map<String,dynamic>();
    disease['id'] = model.id;
    disease['patientID'] = model.patientId;
    disease["isParent"] = model.isParent;
    disease["name"] = model.name;
    disease['active'] = model.active;

    Response response = await post(url,body: disease);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);

    }else{
      print(response.statusCode);
    }

  }
}