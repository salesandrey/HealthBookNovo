import 'dart:convert';
import 'package:HealthBook/app/models/document_model.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';

class DocumentRepository{

  Future<List<DocumentModel>> get(String patient,String isParent) async {
    String url ="https://health.lanconi.com.br/api/document/get";

    Map<String,dynamic> document = Map<String,dynamic>();
    document['patient'] = patient;
    document['isParent'] = isParent;

    Response response = await post(url,body: document);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      if(data["status"]=="Error"){
        return [];
      }
      List<dynamic> list = data["data"];
      List<DocumentModel> documents = list.map((value) => DocumentModel.fromMap(value)).toList();
      documents.removeWhere((element) => element.active=="0");
      print(documents);
      return documents;
    }else{
      print(response.statusCode);
      return [];
    }
  }

  Future<String> insert(DocumentModel model) async {
    String url ="https://health.lanconi.com.br/api/document/insert";

    Map<String,dynamic> document = Map<String,dynamic>();
    document['patient'] = model.patient;
    document['isParent'] = model.isParent;
    document['parentID'] = model.patient;
    document['title'] = model.title;
    document['category'] = model.category;
    document['createdOn'] = TimeConvert().convertTimeToDataBase(model.createdOn);
    document['obs'] = model.obs;
    document['url'] = model.url;

    Response response = await post(url,body: document);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);
      dynamic value = jsonDecode(response.body)["data"]["id"];
      return value.toString();
    }else{
      print(response.statusCode);
      return null;
    }
  }

  Future<void> update(DocumentModel model) async {

    String url ="https://health.lanconi.com.br/api/document/update";

    Map<String,dynamic> document = Map<String,dynamic>();
    document["id"] = model.id;
    document['patient'] = model.patient;
    document['isParent'] = model.isParent;
    document['title'] = model.title;
    document['category'] = model.category;
    document['createdOn'] = TimeConvert().convertTimeToDataBase(model.createdOn);
    document['obs'] = model.obs;
    document['url'] = model.url;
    document["active"] = model.active;

    print(model.active);

    Response response = await post(url,body: document);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);
    }else{
      print(response.statusCode);
    }


  }
}