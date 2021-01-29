


import 'dart:convert';

import 'package:HealthBook/app/models/emergency_contact_model.dart';
import 'package:http/http.dart';

class EmergencyContactRepository{

  Future<List<EmergencyContactModel>> get(String patientID) async {
    String url ="https://health.lanconi.com.br/api/emergency/get";

    Map<String,dynamic> document = Map<String,dynamic>();
    document['parentID'] = patientID;

    Response response = await post(url,body: document);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      if(data["status"]=="Error"){
        return [];
      }
      List<dynamic> list = data["data"];
      List<EmergencyContactModel> contacts = list.map((value) => EmergencyContactModel.fromMap(value)).toList();
      contacts.removeWhere((element) => element.active=="0");
      return contacts;
    }else{
      print(response.statusCode);
      return [];
    }
  }

  Future<bool> insert(EmergencyContactModel model) async {
    String url ="https://health.lanconi.com.br/api/emergency/insert";

    Map<String,dynamic> contact = Map<String,dynamic>();
    contact['parentID'] = model.parentId;
    contact["name"] = model.name;
    contact["email"] = model.email;
    contact['phone'] = model.phone;
    contact['relationship'] = model.relationship;

    Response response = await post(url,body: contact);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);
      if(data["status"]=="Error"){
        return false;
      }
      return true;
    }else{
      print(response.statusCode);
      return false;
    }
  }

  Future<bool> update(EmergencyContactModel model, String active) async {
    String url ="https://health.lanconi.com.br/api/emergency/update";

    Map<String,dynamic> contact = Map<String,dynamic>();
    contact['id'] = model.id;
    contact['parentID'] = model.parentId;
    contact["name"] = model.name;
    contact["email"] = model.email;
    contact['phone'] = model.phone;
    contact['relationship'] = model.relationship;
    contact['active'] = active;

    Response response = await post(url,body: contact);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);
      if(data["status"]=="Error"){
        return false;
      }
      return true;
    }else{
      print(response.statusCode);
      return false;
    }
  }

}