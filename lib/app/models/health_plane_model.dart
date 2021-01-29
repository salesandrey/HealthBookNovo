import 'dart:convert';

class HealthPlaneModel {
  HealthPlaneModel({
    this.id,
    this.isParent,
    this.parentId,
    this.name,
    this.number,
    this.photo,
    this.sus,
    this.active,
  });

  final String id;
  final String isParent;
  final String parentId;
  final String name;
  final String number;
  final String photo;
  final String sus;
  final String active;

  HealthPlaneModel copyWith({
    String id,
    String isParent,
    String parentId,
    String name,
    String number,
    String photo,
    String sus,
    String active,
  }) =>
      HealthPlaneModel(
        id: id ?? this.id,
        isParent: isParent ?? this.isParent,
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        number: number ?? this.number,
        photo: photo ?? this.photo,
        sus: sus ?? this.sus,
        active: active ?? this.active,
      );

  factory HealthPlaneModel.fromJson(String str) => HealthPlaneModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HealthPlaneModel.fromMap(Map<String, dynamic> json) => HealthPlaneModel(
    id: json["id"],
    isParent: json["isParent"],
    parentId: json["parentID"],
    name: json["name"],
    number: json["number"],
    photo: json["photo"],
    sus: json["sus"],
    active: json["active"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "isParent": isParent,
    "parentID": parentId,
    "name": name,
    "number": number,
    "photo": photo,
    "sus": sus,
    "active": active,
  };
}
