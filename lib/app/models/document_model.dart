import 'dart:convert';

class DocumentModel {
  DocumentModel({
    this.id,
    this.patient,
    this.isParent,
    this.title,
    this.category,
    this.createdOn,
    this.obs,
    this.url,
    this.active,
  });

  final String id;
  final String patient;
  final String isParent;
  final String title;
  final String category;
  final DateTime createdOn;
  final String obs;
  final String url;
  final String active;

  DocumentModel copyWith({
    String id,
    String patient,
    String isParent,
    String title,
    String category,
    DateTime createdOn,
    String obs,
    String url,
    String active,
  }) =>
      DocumentModel(
        id: id ?? this.id,
        patient: patient ?? this.patient,
        isParent: isParent ?? this.isParent,
        title: title ?? this.title,
        category: category ?? this.category,
        createdOn: createdOn ?? this.createdOn,
        obs: obs ?? this.obs,
        url: url ?? this.url,
        active: active ?? this.active,
      );

  factory DocumentModel.fromJson(String str) => DocumentModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DocumentModel.fromMap(Map<String, dynamic> json) => DocumentModel(
    id: json["id"],
    patient: json["patient"],
    isParent: json["isParent"],
    title: json["title"],
    category: json["category"],
    createdOn: DateTime.parse(json["createdOn"]),
    obs: json["obs"],
    url: json["url"],
    active: json["active"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "patient": patient,
    "isParent": isParent,
    "title": title,
    "category": category,
    "createdOn": "${createdOn.year.toString().padLeft(4, '0')}-${createdOn.month.toString().padLeft(2, '0')}-${createdOn.day.toString().padLeft(2, '0')}",
    "obs": obs,
    "url": url,
    "active": active,
  };
}
