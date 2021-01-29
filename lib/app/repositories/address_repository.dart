import 'dart:convert';
import 'dart:ui';

import 'package:HealthBook/app/models/address_model.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:http/http.dart';

class AddressRepository {

  final String idUser;

  AddressRepository({this.idUser});


  Future<List<AddressModel>> get(String patientID) async {

    String url ="https://health.lanconi.com.br/api/address/get";
    Map<String,dynamic> address = Map<String,dynamic>();
    address['patientID'] = patientID;

    Response response = await post(url,body: address);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      if(data["status"]=="Error"){
        return [];
      }
      List<dynamic> list = data["data"];
      List<AddressModel> addresses = list.map((value) => AddressModel.fromMap(value)).toList();
      addresses.removeWhere((element) => element.active=="0");
      return addresses;
    }else{
      print(response.statusCode);
      return [];
    }

  }

  Future<void> insert(AddressModel model) async {

    String url ="https://health.lanconi.com.br/api/address/insert";

    Map<String,dynamic> address = Map<String,dynamic>();

    address['patientID'] = model.patientId;
    address['cep'] = model.cep;
    address['address'] = model.address;
    address['address2'] = model.address2==null? "": model.address2;
    address['addressnumber'] = model.addressnumber;
    address['neigh'] = model.neigh;
    address['city'] = model.city;
    address['district'] = model.district;
    address['coord'] = model.coord;
    address['createdOn'] = TimeConvert().convertTimeToDataBase(model.createdOn);
    address['active'] = model.active;

    Response response = await post(url,body: address);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);
    }else{
      print(response.statusCode);
    }

  }

  Future<void> update(AddressModel model) async {

    String url ="https://health.lanconi.com.br/api/address/update";

    Response response = await post(url,body: model.toMap());

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);

    }else{
      print(response.statusCode);
    }

  }

  Stream<List<AddressModel>> get address async*{
    yield await get(idUser);
  }





}