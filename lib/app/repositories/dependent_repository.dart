import 'dart:convert';
import 'package:HealthBook/app/models/dependent_model.dart';
import 'package:http/http.dart';

class DependentRepository {


  Future<dynamic> get(String parentID) async {
    String url = "https://health.lanconi.com.br/api/dependent/get";
    Map user = Map<String, dynamic>();
    user['parentID'] = parentID;

    Response response = await post(url, body: user);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else {
      print(response.statusCode);
      return null;
    }
  }


  Future<dynamic> insert(DependentModel model) async {
    String url = "https://health.lanconi.com.br/api/dependent/insert";

    Map user = Map<String, dynamic>();
    user['parentID'] = model.parentID;
    user["fullname"] = model.fullName;
    user["cpf"] = model.cpf;
    user["birthday"] = model.birthday;
    user["sex"] = model.sex;
    user["photo"] = model.photo;
    user["type"] = model.type;
    print("Inserindo dados do dependente");
    print(user);
    Response response = await post(url, body: user);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      print(response.statusCode);
      return null;
    }
  }


  Future<void> update(DependentModel model) async {
    String url = "https://health.lanconi.com.br/api/dependent/update";

    Map user = Map<String, dynamic>();
    user["id"] = model.id;
    user["parentID"] = model.parentID;
    user["fullname"] = model.fullName;
    user["cpf"] = model.cpf;
    user["birthdate"] = model.birthday;
    user["sex"] = model.sex;
    user["photo"] = model.photo;
    user["type"] = model.type;

    print(user);

    Response response = await post(url, body: user);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      print(data);
    } else {
      print(response.statusCode);
    }
  }
}
