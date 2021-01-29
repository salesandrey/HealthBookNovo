// To parse this JSON data, do
//
//     final diseaseModel = diseaseModelFromMap(jsonString);

import 'dart:convert';

class DiseaseModel {
  DiseaseModel({
    this.id,
    this.patientId,
    this.isParent,
    this.name,
    this.active,
  });

  final String id;
  final String patientId;
  final String isParent;
  final String name;
  final String active;

  DiseaseModel copyWith({
    String id,
    String patientId,
    String isParent,
    String name,
    String active,
  }) =>
      DiseaseModel(
        id: id ?? this.id,
        patientId: patientId ?? this.patientId,
        isParent: isParent ?? this.isParent,
        name: name ?? this.name,
        active: active ?? this.active,
      );

  factory DiseaseModel.fromJson(String str) => DiseaseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DiseaseModel.fromMap(Map<String, dynamic> json) => DiseaseModel(
    id: json["id"],
    patientId: json["patientID"],
    isParent: json["isParent"],
    name: json["name"],
    active: json["active"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "patientID": patientId,
    "isParent": isParent,
    "name": name,
    "active": active,
  };
}
