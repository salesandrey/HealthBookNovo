import 'dart:convert';

class UserModel {
  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.password,
    this.cpf,
    this.login,
    this.birthdate,
    this.sex,
    this.bloodgroup,
    this.photo,
    this.docphoto1,
    this.docphoto2,
    this.mobilenumber,
    this.phone,
    this.cep,
    this.address,
    this.address2,
    this.addressnumber,
    this.neigh,
    this.city,
    this.district,
    this.createOn,
    this.active,
  });

  final String id;
  final String name;
  final String username;
  final String email;
  final String password;
  final String cpf;
  final String login;
  final DateTime birthdate;
  final String sex;
  final String bloodgroup;
  final String photo;
  final String docphoto1;
  final String docphoto2;
  final String mobilenumber;
  final String phone;
  final String cep;
  final String address;
  final String address2;
  final String addressnumber;
  final String neigh;
  final String city;
  final String district;
  final DateTime createOn;
  final String active;

  UserModel copyWith({
    String id,
    String name,
    String username,
    String email,
    String password,
    String cpf,
    String login,
    DateTime birthdate,
    String sex,
    String bloodgroup,
    String photo,
    String docphoto1,
    String docphoto2,
    String mobilenumber,
    String phone,
    String cep,
    String address,
    String address2,
    String addressnumber,
    String neigh,
    String city,
    String district,
    DateTime createOn,
    String active,
  }) =>
      UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password,
        cpf: cpf ?? this.cpf,
        login: login ?? this.login,
        birthdate: birthdate ?? this.birthdate,
        sex: sex ?? this.sex,
        bloodgroup: bloodgroup ?? this.bloodgroup,
        photo: photo ?? this.photo,
        docphoto1: docphoto1 ?? this.docphoto1,
        docphoto2: docphoto2 ?? this.docphoto2,
        mobilenumber: mobilenumber ?? this.mobilenumber,
        phone: phone ?? this.phone,
        cep: cep ?? this.cep,
        address: address ?? this.address,
        address2: address2 ?? this.address2,
        addressnumber: addressnumber ?? this.addressnumber,
        neigh: neigh ?? this.neigh,
        city: city ?? this.city,
        district: district ?? this.district,
        createOn: createOn ?? this.createOn,
        active: active ?? this.active,
      );

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
    id: json["id"],
    name: json["name"],
    username: json["username"],
    email: json["email"],
    password: json["password"],
    cpf: json["cpf"],
    login: json["login"],
    birthdate:json["birthdate"]==null ||json["birthdate"]==""? null: DateTime.parse(json["birthdate"]),
    sex: json["sex"],
    bloodgroup: json["bloodgroup"],
    photo: json["photo"],
    docphoto1: json["docphoto1"],
    docphoto2: json["docphoto2"],
    mobilenumber: json["mobilenumber"],
    phone: json["phone"],
    cep: json["cep"],
    address: json["address"],
    address2: json["address2"],
    addressnumber: json["addressnumber"],
    neigh: json["neigh"],
    city: json["city"],
    district: json["district"],
    createOn: json["createOn"]==null ||json["createOn"]==""?null: DateTime.parse(json["createOn"]),
    active: json["active"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "username": username,
    "email": email,
    "password": password,
    "cpf": cpf,
    "birthdate":birthdate==null?null:"${birthdate.year.toString().padLeft(4, '0')}-${birthdate.month.toString().padLeft(2, '0')}-${birthdate.day.toString().padLeft(2, '0')}",
    "sex": sex,
    "bloodgroup": bloodgroup,
    "photo": photo,
    "docphoto1": docphoto1,
    "docphoto2": docphoto2,
    "mobilenumber": mobilenumber,
    "phone": phone,
    "cep": cep,
    "address": address,
    "address2": address2,
    "addressnumber": addressnumber,
    "neigh": neigh,
    "city": city,
    "district": district,
    "active": active,
  };
}
