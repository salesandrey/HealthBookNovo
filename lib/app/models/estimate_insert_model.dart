// To parse this JSON data, do
//
//     final estimateInsertModel = estimateInsertModelFromMap(jsonString);

import 'dart:convert';
import 'package:HealthBook/app/models/estimate_product_model.dart';

class EstimateInsertModel {
  EstimateInsertModel({
    this.patientId,
    this.type,
    this.delivery,
    this.addressId,
    this.items,
    this.pharmasId,
  });

  final String patientId;
  final String type;
  final String delivery;
  final String addressId;
  final List<EstimateProductModel> items;
  final List<int> pharmasId;

  EstimateInsertModel copyWith({
    String patientId,
    String type,
    String delivery,
    String addressId,
    List<EstimateProductModel> items,
    List<int> pharmasId,
  }) =>
      EstimateInsertModel(
        patientId: patientId ?? this.patientId,
        type: type ?? this.type,
        delivery: delivery ?? this.delivery,
        addressId: addressId ?? this.addressId,
        items: items ?? this.items,
        pharmasId: pharmasId ?? this.pharmasId,
      );

  factory EstimateInsertModel.fromJson(String str) => EstimateInsertModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EstimateInsertModel.fromMap(Map<String, dynamic> json) => EstimateInsertModel(
    patientId: json["patientID"],
    type: json["type"],
    delivery: json["delivery"],
    addressId: json["addressID"],
    items: List<EstimateProductModel>.from(json["items"].map((x) => EstimateProductModel.fromMap(x))),
    pharmasId: List<int>.from(json["pharmasID"].map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "patientID": patientId,
    "type": type,
    "delivery": delivery,
    "addressID": addressId,
    "items": List<dynamic>.from(items.map((x) => x.toMap())).toString(),
    "pharmasID": List<dynamic>.from(pharmasId.map((x) => x)).toString(),
  };
}
