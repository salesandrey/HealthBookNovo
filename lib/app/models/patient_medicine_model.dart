// To parse this JSON data, do
//
//     final patientMedicineModel = patientMedicineModelFromMap(jsonString);

import 'dart:convert';

class PatientMedicineModel {
  PatientMedicineModel({
    this.id,
    this.patientId,
    this.medicineId,
    this.isParent,
    this.name,
    this.dosage,
    this.createdOn,
    this.filename,
    this.continuo,
    this.initDate,
    this.endDate,
    this.time,
    this.qtd,
    this.useDays,
    this.notify,
    this.active,
  });

  final String id;
  final String patientId;
  final String medicineId;
  final String isParent;
  final String name;
  final String dosage;
  final DateTime createdOn;
  final String filename;
  final String continuo;
  final DateTime initDate;
  final DateTime endDate;
  final String time;
  final String qtd;
  final String useDays;
  final String notify;
  final String active;

  PatientMedicineModel copyWith({
    String id,
    String patientId,
    String medicineId,
    String isParent,
    String name,
    String dosage,
    DateTime createdOn,
    String filename,
    String continuo,
    DateTime initDate,
    DateTime endDate,
    String time,
    String qtd,
    String useDays,
    String notify,
    String active,
  }) =>
      PatientMedicineModel(
        id: id ?? this.id,
        patientId: patientId ?? this.patientId,
        medicineId: medicineId ?? this.medicineId,
        isParent: isParent ?? this.isParent,
        name: name ?? this.name,
        dosage: dosage ?? this.dosage,
        createdOn: createdOn ?? this.createdOn,
        filename: filename ?? this.filename,
        continuo: continuo ?? this.continuo,
        initDate: initDate ?? this.initDate,
        endDate: endDate ?? this.endDate,
        time: time ?? this.time,
        qtd: qtd ?? this.qtd,
        useDays: useDays ?? this.useDays,
        notify: notify ?? this.notify,
        active: active ?? this.active,
      );

  factory PatientMedicineModel.fromJson(String str) => PatientMedicineModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PatientMedicineModel.fromMap(Map<String, dynamic> json) => PatientMedicineModel(
    id: json["id"],
    patientId: json["patientID"],
    medicineId: json["medicineID"],
    isParent: json["isParent"],
    name: json["name"],
    dosage: json["dosage"],
    createdOn: DateTime.parse(json["createdOn"]),
    filename: json["filename"],
    continuo: json["continuo"],
    initDate: DateTime.parse(json["initDate"]),
    endDate: DateTime.parse(json["endDate"]),
    time: json["time"],
    qtd: json["qtd"],
    useDays: json["useDays"],
    notify: json["notify"],
    active: json["active"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "patientID": patientId,
    "medicineID": medicineId,
    "isParent": isParent,
    "name": name,
    "dosage": dosage,
    "createdOn": "${createdOn.year.toString().padLeft(4, '0')}-${createdOn.month.toString().padLeft(2, '0')}-${createdOn.day.toString().padLeft(2, '0')}",
    "filename": filename,
    "continuo": continuo,
    "initDate": "${initDate.year.toString().padLeft(4, '0')}-${initDate.month.toString().padLeft(2, '0')}-${initDate.day.toString().padLeft(2, '0')}",
    "endDate": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
    "time": time,
    "qtd": qtd,
    "useDays": useDays,
    "notify": notify,
    "active": active,
  };
}
