import 'dart:convert';

import 'package:HealthBook/app/models/pharma_estimate_product_model.dart';

class PharmacyEstimateListModel {
  PharmacyEstimateListModel({
    this.id,
    this.patientId,
    this.estimateId,
    this.pharmaId,
    this.pharmaName,
    this.pharmaAddress,
    this.pharmaImage,
    this.addressnumber,
    this.totalPrice,
    this.taxPrice,
    this.discount,
    this.internalPharmaId,
    this.status,
    this.createdOn,
    this.coord,
    this.items,
  });

  final String id;
  final String patientId;
  final String estimateId;
  final String pharmaId;
  final String pharmaName;
  final String pharmaAddress;
  final String pharmaImage;
  final String addressnumber;
  final String totalPrice;
  final String taxPrice;
  final String discount;
  final String internalPharmaId;
  final String status;
  final DateTime createdOn;
  final String coord;
  final List<PharmacyEstimateProductModel> items;

  PharmacyEstimateListModel copyWith({
    String id,
    String patientId,
    String estimateId,
    String pharmaId,
    String pharmaName,
    String pharmaAddress,
    String pharmaImage,
    String addressnumber,
    String totalPrice,
    String taxPrice,
    String discount,
    String internalPharmaId,
    String status,
    DateTime createdOn,
    String coord,
    List<PharmacyEstimateProductModel> items,
  }) =>
      PharmacyEstimateListModel(
        id: id ?? this.id,
        patientId: patientId ?? this.patientId,
        estimateId: estimateId ?? this.estimateId,
        pharmaId: pharmaId ?? this.pharmaId,
        pharmaName: pharmaName ?? this.pharmaName,
        pharmaAddress: pharmaAddress ?? this.pharmaAddress,
        pharmaImage: pharmaImage ?? this.pharmaImage,
        addressnumber: addressnumber ?? this.addressnumber,
        totalPrice: totalPrice ?? this.totalPrice,
        taxPrice: taxPrice ?? this.taxPrice,
        discount: discount ?? this.discount,
        internalPharmaId: internalPharmaId ?? this.internalPharmaId,
        status: status ?? this.status,
        createdOn: createdOn ?? this.createdOn,
        coord: coord ?? this.coord,
        items: items ?? this.items,
      );

  factory PharmacyEstimateListModel.fromJson(String str) => PharmacyEstimateListModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PharmacyEstimateListModel.fromMap(Map<String, dynamic> json) => PharmacyEstimateListModel(
    id: json["id"],
    patientId: json["patientID"],
    estimateId: json["estimateID"],
    pharmaId: json["pharmaID"],
    pharmaName: json["pharmaName"],
    pharmaAddress: json["pharmaAddress"],
    pharmaImage: json["pharmaImage"],
    addressnumber: json["addressnumber"],
    totalPrice: json["totalPrice"],
    taxPrice: json["taxPrice"],
    discount: json["discount"],
    internalPharmaId: json["internalPharmaID"],
    status: json["status"],
    createdOn: DateTime.parse(json["createdOn"]),
    coord: json["coord"],
    items: List<PharmacyEstimateProductModel>.from(json["items"].map((x) => PharmacyEstimateProductModel.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "patientID": patientId,
    "estimateID": estimateId,
    "pharmaID": pharmaId,
    "pharmaName": pharmaName,
    "pharmaAddress": pharmaAddress,
    "pharmaImage": pharmaImage,
    "addressnumber": addressnumber,
    "totalPrice": totalPrice,
    "taxPrice": taxPrice,
    "discount": discount,
    "internalPharmaID": internalPharmaId,
    "status": status,
    "createdOn": "${createdOn.year.toString().padLeft(4, '0')}-${createdOn.month.toString().padLeft(2, '0')}-${createdOn.day.toString().padLeft(2, '0')}",
    "coord": coord,
    "items": List<dynamic>.from(items.map((x) => x.toMap())),
  };
}