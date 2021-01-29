import 'dart:convert';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:http/http.dart';

class PatientRepository{

  Future<UserModel> get(String email) async {
    String url = "https://health.lanconi.com.br/api/patient/get";
    Map user = Map<String,dynamic>();
    user['email'] = email;
    Response response = await post(url, body: user);
      if (response.statusCode == 200) {
        dynamic data = jsonDecode(response.body);
        if(data["status"]=="Error"){
          return null;
        }
        UserModel user = UserModel.fromMap(data["data"]);
        return user;
      } else {
        return null;
      }
  }

  Future<dynamic> insert(UserModel model) async {
    String url = "https://health.lanconi.com.br/api/patient/insert";

    Map patient = Map<String,dynamic>();
    patient['name'] = model.name;
    patient["username"] = model.username;
    patient["email"] = model.email;
    patient["password"] = model.password;
    patient["cpf"] = model.cpf;
    patient["birthdate"] = model.birthdate==null? "" : model.birthdate;
    patient["sex"] = model.sex;
    patient["bloodgroup"] = model.bloodgroup;
    patient["photo"] = model.photo;
    patient["docphoto1"] = model.docphoto1;
    patient["docphoto2"] = model.docphoto2;
    patient["mobilenumber"] = model.mobilenumber;
    patient["phone"] = model.photo;
    patient["cep"] = model.cep;
    patient["address"] = model.address;
    patient["address2"] = model.address2;
    patient["addressnumber"] = model.addressnumber;
    patient["neigh"] = model.neigh;
    patient["city"] = model.city;
    patient["district"] = model.district;

    Response response = await post(url,body: patient);

    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      return data;

    }else{
      print(response.statusCode);
      return null;
    }

  }



  Future<void> update(UserModel model) async {
    String url = "https://health.lanconi.com.br/api/patient/update";
    Response response = await post(url,body: model.toMap());
    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
    }else{
      print(response.statusCode);
    }
  }


  Future<void> updateNew(UserModel model) async {
    String url = "https://health.lanconi.com.br/api/patient/update";

    Map<String,dynamic> user = model.toMap();

    print(user);

    Response response = await post(url,body:user);
    if(response.statusCode==200){
      dynamic data = jsonDecode(response.body);
      print(data);
    }else{
      print(response.statusCode);
    }
  }


}


