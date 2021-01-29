// To parse this JSON data, do
//
//     final emergencyContactModel = emergencyContactModelFromMap(jsonString);

import 'dart:convert';

class EmergencyContactModel {
  EmergencyContactModel({
    this.id,
    this.parentId,
    this.name,
    this.email,
    this.phone,
    this.relationship,
    this.createOn,
    this.active,
  });

  final String id;
  final String parentId;
  final String name;
  final String email;
  final String phone;
  final String relationship;
  final String createOn;
  final String active;

  EmergencyContactModel copyWith({
    String id,
    String parentId,
    String name,
    String email,
    String phone,
    String relationship,
    String createOn,
    String active,
  }) =>
      EmergencyContactModel(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        relationship: relationship ?? this.relationship,
        createOn: createOn ?? this.createOn,
        active: active ?? this.active,
      );

  factory EmergencyContactModel.fromJson(String str) => EmergencyContactModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EmergencyContactModel.fromMap(Map<String, dynamic> json) => EmergencyContactModel(
    id: json["id"],
    parentId: json["parentID"],
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    relationship: json["relationship"],
    createOn: json["createOn"],
    active: json["active"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "parentID": parentId,
    "name": name,
    "email": email,
    "phone": phone,
    "relationship": relationship,
    "createOn": createOn,
    "active": active,
  };
}