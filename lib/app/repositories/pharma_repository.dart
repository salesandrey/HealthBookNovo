import 'dart:convert';
import 'package:http/http.dart';
import 'package:HealthBook/app/models/pharma_model.dart';

class PharmaRepository{

  Future<List<PharmaModel>> get(String coord,String city) async {

    String url = "https://health.lanconi.com.br/api/pharma/get";

    Map<String,dynamic> pharmacy = Map<String,dynamic>();
    pharmacy['coord'] = "";
    pharmacy['city'] = '';

    Response response = await post(url,body: pharmacy);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      if(data["status"]=="Error"){
        return null;
      }
      List<dynamic> list = data["data"];
      print(data);
      List<PharmaModel> pharmmacies = list.map((value) => PharmaModel.fromMap(value)).toList();
      pharmmacies.removeWhere((element) => element.active=="0");
      return pharmmacies;
    }else{
      print(response.statusCode);
      return null;
    }
  }
}