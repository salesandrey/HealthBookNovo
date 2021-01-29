

import 'dart:convert';

import 'package:HealthBook/app/models/pharma_estimate_product_model.dart';
import 'package:HealthBook/app/models/pharmacy_estimate_list_model.dart';
import 'package:http/http.dart';

class PharmacyEstimateListRepository{



  Future<List<PharmacyEstimateListModel>> get(String estimateID,String userID)async {

    String url ="https://health.lanconi.com.br/api/estimate_pharma/get";

    Map<String,String> query = Map<String,String>();
    query['estimateID'] = "1797";
    query['patientID'] = "764";

    Response response = await post(url,body: query);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);
      if(data["status"]=="Error"){
        return [];
      }
      List<dynamic> list = data["data"];
      List<PharmacyEstimateListModel> listEstimates = list.map((value) => PharmacyEstimateListModel.fromMap(value)).toList();
      print(listEstimates[0]);
      return listEstimates;
    }else{
      print(response.statusCode);
      return [];
    }

  }


}