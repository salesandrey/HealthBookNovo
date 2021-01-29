// To parse this JSON data, do
//
//     final pharmaModel = pharmaModelFromMap(jsonString);

import 'dart:convert';

class PharmaModel {
  PharmaModel({
    this.id,
    this.name,
    this.address,
    this.email,
    this.imageUrl,
    this.city,
    this.cep,
    this.phone,
    this.coord,
    this.category,
    this.active,
  });

  final String id;
  final String name;
  final String address;
  final String email;
  final String imageUrl;
  final String city;
  final String cep;
  final String phone;
  final String coord;
  final String category;
  final String active;

  PharmaModel copyWith({
    String id,
    String name,
    String address,
    String email,
    String imageUrl,
    String city,
    String cep,
    String phone,
    String coord,
    String category,
    String active,
  }) =>
      PharmaModel(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        email: email ?? this.email,
        imageUrl: imageUrl ?? this.imageUrl,
        city: city ?? this.city,
        cep: cep ?? this.cep,
        phone: phone ?? this.phone,
        coord: coord ?? this.coord,
        category: category ?? this.category,
        active: active ?? this.active,
      );

  factory PharmaModel.fromJson(String str) => PharmaModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PharmaModel.fromMap(Map<String, dynamic> json) => PharmaModel(
    id: json["id"],
    name: json["name"],
    address: json["address"],
    email: json["email"],
    imageUrl: json["image_url"],
    city: json["city"],
    cep: json["cep"],
    phone: json["phone"],
    coord: json["coord"],
    category: json["category"],
    active: json["active"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "address": address,
    "email": email,
    "image_url": imageUrl,
    "city": city,
    "cep": cep,
    "phone": phone,
    "coord": coord,
    "category": category,
    "active": active,
  };
}
