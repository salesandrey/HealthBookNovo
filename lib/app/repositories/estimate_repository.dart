


import 'dart:convert';

import 'package:HealthBook/app/models/estimate_model.dart';
import 'package:http/http.dart';
import 'package:HealthBook/app/models/estimate_product_model.dart';
import 'package:HealthBook/app/models/estimate_insert_model.dart';

class EstimateRepository{

  Future<List<EstimateModel>> get(String userID) async {

    String url = "https://health.lanconi.com.br/api/estimate/get";

    Map estimate = Map<String,dynamic>();
    estimate['patientID'] = userID;

    Response response = await post(url, body: estimate);

    if (response.statusCode == 200){
      dynamic data = jsonDecode(response.body)["msg"];
      if(data=="Orçamento não encontrado"){
        print("Nenhum resultado");
        return null;
      }
      data = jsonDecode(response.body)["data"];
      List<dynamic> list = data;
      List<EstimateModel> estimates = list.map((value) => EstimateModel.fromMap(value)).toList();
      return estimates;
    }else {
      print("Nenhum resultado");
      return null;
    }
  }

  Future<void> insert({
  String userID, String type, String delivery, String address,
  List<EstimateProductModel> items, List<int> pharmacies}) async{

    String url = "https://health.lanconi.com.br/api/estimate/insert";

    EstimateInsertModel model =  EstimateInsertModel(
      type: type,
      delivery: delivery,
      items: items,
      pharmasId: pharmacies,
      addressId: address,
      patientId: userID
    );

    Map<String,dynamic> modelMap = model.toMap();

    Response response = await post(url,body: modelMap);

    if(response.statusCode == 200){
      print(response.body);
    }else{
      print(response.statusCode);
    }
  }

  Future<void> update({
    String estimateID, String status, String orderApproved}) async{

    String url = "https://health.lanconi.com.br/api/estimate/update";

    Map<String,String> query = Map<String,String>();
    query["id"] = estimateID;
    query["status"] = status;
    query["orderApproved"] = orderApproved;

    Response response = await post(url,body: query);

    if(response.statusCode == 200){
      print(response.body);
    }else{
      print(response.statusCode);
    }
  }




}