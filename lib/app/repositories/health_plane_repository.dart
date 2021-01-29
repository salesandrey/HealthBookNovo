import 'dart:convert';
import 'package:HealthBook/app/models/health_plane_model.dart';
import 'package:http/http.dart';

class HealthPlaneRepository {

  Future<List<HealthPlaneModel>> get(String patientID,String isParent) async {

    String url = "https://health.lanconi.com.br/api/plan/get";

    Map<String,dynamic> plane = Map<String,dynamic>();
    plane['patientID'] = patientID;
    plane["isParent"] = isParent;

    Response response = await post(url,body: plane);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);
      if(data["status"]=="Error"){
        return [];
      }
      List<dynamic> list = data["data"];
      List<HealthPlaneModel> healthPlan = list.map((value) => HealthPlaneModel.fromMap(value)).toList();
      return healthPlan;

    }else{
      print(response.statusCode);
      return [];
    }
  }


  Future<void> insert(HealthPlaneModel model,String patientID) async {

    String url = "https://health.lanconi.com.br/api/plan/insert";
    Map<String,dynamic> plane = Map<String,dynamic>();
    plane['patientID'] = patientID;
    plane["isParent"] = model.isParent;
    plane["name"] = model.name;
    plane["number"] = model.number;
    plane["photo"] = model.photo;
    plane["sus"] = model.sus;

    Response response = await post(url,body: plane);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);

    }else{
      print(response.statusCode);
    }
  }


  Future<void> update(HealthPlaneModel model,String patientID) async {
    String url = "https://health.lanconi.com.br/api/plan/update";

    Map<String,dynamic> plane = Map<String,dynamic>();
    plane["id"] = model.id;
    plane['patientID'] = patientID;
    plane["isParent"] = model.isParent;
    plane["name"] = model.name;
    plane["number"] = model.number;
    plane["photo"] = model.photo;
    plane["sus"] = model.sus;
    plane["active"] = model.active;

    Response response = await post(url,body: plane);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);

    }else{
      print(response.statusCode);
    }
  }
}