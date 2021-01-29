import 'dart:convert';
import 'package:HealthBook/app/models/estimate_product_model.dart';

class EstimateModel {
  EstimateModel({
    this.id,
    this.patientId,
    this.type,
    this.addressId,
    this.address,
    this.address2,
    this.addressnumber,
    this.cep,
    this.neigh,
    this.city,
    this.district,
    this.coord,
    this.delivery,
    this.status,
    this.createOn,
    this.items,
  });

  final String id;
  final String patientId;
  final String type;
  final String addressId;
  final String address;
  final String address2;
  final String addressnumber;
  final String cep;
  final String neigh;
  final String city;
  final String district;
  final String coord;
  final String delivery;
  final String status;
  final DateTime createOn;
  final List<EstimateProductModel> items;

  EstimateModel copyWith({
    String id,
    String patientId,
    String type,
    String addressId,
    String address,
    String address2,
    String addressnumber,
    String cep,
    String neigh,
    String city,
    String district,
    String coord,
    String delivery,
    String status,
    DateTime createOn,
    List<EstimateProductModel> items,
  }) =>
      EstimateModel(
        id: id ?? this.id,
        patientId: patientId ?? this.patientId,
        type: type ?? this.type,
        addressId: addressId ?? this.addressId,
        address: address ?? this.address,
        address2: address2 ?? this.address2,
        addressnumber: addressnumber ?? this.addressnumber,
        cep: cep ?? this.cep,
        neigh: neigh ?? this.neigh,
        city: city ?? this.city,
        district: district ?? this.district,
        coord: coord ?? this.coord,
        delivery: delivery ?? this.delivery,
        status: status ?? this.status,
        createOn: createOn ?? this.createOn,
        items: items ?? this.items,
      );

  factory EstimateModel.fromJson(String str) => EstimateModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EstimateModel.fromMap(Map<String, dynamic> json) => EstimateModel(
    id: json["id"],
    patientId: json["patientID"],
    type: json["type"],
    addressId: json["addressID"],
    address: json["address"],
    address2: json["address2"],
    addressnumber: json["addressnumber"],
    cep: json["cep"],
    neigh: json["neigh"],
    city: json["city"],
    district: json["district"],
    coord: json["coord"],
    delivery: json["delivery"],
    status: json["status"],
    createOn: DateTime.parse(json["createOn"]),
    items: List<EstimateProductModel>.from(json["items"].map((x) => EstimateProductModel.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "patientID": patientId,
    "type": type,
    "addressID": addressId,
    "address": address,
    "address2": address2,
    "addressnumber": addressnumber,
    "cep": cep,
    "neigh": neigh,
    "city": city,
    "district": district,
    "coord": coord,
    "delivery": delivery,
    "status": status,
    "createOn": createOn.toIso8601String(),
    "items": List<dynamic>.from(items.map((x) => x.toMap())),
  };
}