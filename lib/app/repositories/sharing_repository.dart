
import 'dart:convert';

import 'package:HealthBook/app/models/sharing_model.dart';
import 'package:http/http.dart';

class SharingRepository{




  Future<List<SharingModel>> getFrom(String userID) async{

    final String url = "https://health.lanconi.com.br/api/sharing/get";

    Map<String,String> query = Map<String,String>();
    query["sharingFrom"] = userID;

    Response response = await post(url,body: query);

    if(response.statusCode== 200 ){
      dynamic data = jsonDecode(response.body);
      if(data["status"]=="Error"){
        return [];
      }
      List<dynamic> list = data["data"];
      List<SharingModel> sharingAccounts = list.map((e) => SharingModel.fromMap(e)).toList();
      sharingAccounts.removeWhere((element) => element.active=="0");
      return sharingAccounts;
    }else{
      return [];
    }
  }

  Future<List<SharingModel>> getTo(String userID) async{

    final String url = "https://health.lanconi.com.br/api/sharing/get";

    Map<String,String> query = Map<String,String>();
    query["sharingTo"] = userID;

    Response response = await post(url,body: query);

    if(response.statusCode== 200 ){
      dynamic data = jsonDecode(response.body);
      if(data["status"]=="Error"){
        return [];
      }
      List<dynamic> list = data["data"];
      List<SharingModel> sharingAccounts = list.map((e) => SharingModel.fromMap(e)).toList();
      sharingAccounts.removeWhere((element) => element.active=="0");
      return sharingAccounts;
    }else{
      return [];
    }
  }


  Future<void> insert(SharingModel sharingUser) async{

    final String url = "https://health.lanconi.com.br/api/sharing/insert";

    Map<String,String> query = sharingUser.toMap();

    Response response = await post(url,body: query);
    
  }

}