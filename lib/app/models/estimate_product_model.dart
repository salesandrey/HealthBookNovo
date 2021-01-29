// To parse this JSON data, do
//
//     final estimateProductModel = estimateProductModelFromMap(jsonString);

import 'dart:convert';

class EstimateProductModel {
  EstimateProductModel({
    this.medicineId,
    this.name,
    this.dosage,
    this.filename,
    this.continuo,
    this.initDate,
    this.endDate,
    this.qtd,
    this.useDays,
    this.notify,
    this.type,
    this.documentId,
    this.documentTitle,
    this.documentCategory,
    this.documentUrl,
    this.createOnMedicine,
    this.createOnDocument,
  });

  final String medicineId;
  final String name;
  final String dosage;
  final String filename;
  final String continuo;
  final DateTime initDate;
  final DateTime endDate;
  final String qtd;
  final String useDays;
  final String notify;
  final String type;
  final String documentId;
  final String documentTitle;
  final String documentCategory;
  final String documentUrl;
  final DateTime createOnMedicine;
  final DateTime createOnDocument;

  EstimateProductModel copyWith({
    String medicineId,
    String name,
    String dosage,
    String filename,
    String continuo,
    DateTime initDate,
    DateTime endDate,
    String qtd,
    String useDays,
    String notify,
    String type,
    String documentId,
    String documentTitle,
    String documentCategory,
    String documentUrl,
    DateTime createOnMedicine,
    DateTime createOnDocument,
  }) =>
      EstimateProductModel(
        medicineId: medicineId ?? this.medicineId,
        name: name ?? this.name,
        dosage: dosage ?? this.dosage,
        filename: filename ?? this.filename,
        continuo: continuo ?? this.continuo,
        initDate: initDate ?? this.initDate,
        endDate: endDate ?? this.endDate,
        qtd: qtd ?? this.qtd,
        useDays: useDays ?? this.useDays,
        notify: notify ?? this.notify,
        type: type ?? this.type,
        documentId: documentId ?? this.documentId,
        documentTitle: documentTitle ?? this.documentTitle,
        documentCategory: documentCategory ?? this.documentCategory,
        documentUrl: documentUrl ?? this.documentUrl,
        createOnMedicine: createOnMedicine ?? this.createOnMedicine,
        createOnDocument: createOnDocument ?? this.createOnDocument,
      );

  factory EstimateProductModel.fromJson(String str) => EstimateProductModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EstimateProductModel.fromMap(Map<String, dynamic> json) => EstimateProductModel(
    medicineId: json["medicineID"],
    name: json["name"],
    dosage: json["dosage"],
    filename: json["filename"],
    continuo: json["continuo"],
    initDate: json["initDate"]==null?null:DateTime.parse(json["initDate"]),
    endDate: json["endDate"]==null?null:DateTime.parse(json["endDate"]),
    qtd: json["qtd"],
    useDays: json["useDays"],
    notify: json["notify"],
    type: json["type"],
    documentId: json["documentID"],
    documentTitle: json["documentTitle"],
    documentCategory: json["documentCategory"],
    documentUrl: json["documentURL"],
    createOnMedicine: json["createOnMedicine"]==null?null:DateTime.parse(json["createOnMedicine"]),
    createOnDocument: json["createOnDocument"]==null?null:DateTime.parse(json["createOnDocument"]),
  );

  Map<String, dynamic> toMap() => {
    "medicineID": medicineId,
    "name": name,
    "dosage": dosage,
    "filename": filename,
    "continuo": continuo,
    "initDate":initDate==null?null:"${initDate.year.toString().padLeft(4, '0')}-${initDate.month.toString().padLeft(2, '0')}-${initDate.day.toString().padLeft(2, '0')}",
    "endDate": endDate==null?null:"${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
    "qtd": qtd,
    "useDays": useDays,
    "notify": notify,
    "type": type,
    "documentID": documentId,
    "documentTitle": documentTitle,
    "documentCategory": documentCategory,
    "documentURL": documentUrl,
    "createOnMedicine": createOnMedicine==null?null:"${createOnMedicine.year.toString().padLeft(4, '0')}-${createOnMedicine.month.toString().padLeft(2, '0')}-${createOnMedicine.day.toString().padLeft(2, '0')}",
    "createOnDocument": createOnDocument==null?null:"${createOnDocument.year.toString().padLeft(4, '0')}-${createOnDocument.month.toString().padLeft(2, '0')}-${createOnDocument.day.toString().padLeft(2, '0')}",
  };
}
