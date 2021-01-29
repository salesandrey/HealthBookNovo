import 'dart:convert';

class PetModel {
  PetModel({
    this.id,
    this.parentId,
    this.name,
    this.type,
    this.birthdate,
    this.gender,
    this.image,
    this.active,
    this.color,
    this.breed,
    this.createOn,
  });

  final String id;
  final String parentId;
  final String name;
  final String type;
  final DateTime birthdate;
  final String gender;
  final String image;
  final String active;
  final String color;
  final String breed;
  final String createOn;

  PetModel copyWith({
    String id,
    String parentId,
    String name,
    String type,
    DateTime birthdate,
    String gender,
    String image,
    String active,
    String color,
    String breed,
    String createOn,
  }) =>
      PetModel(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        type: type ?? this.type,
        birthdate: birthdate ?? this.birthdate,
        gender: gender ?? this.gender,
        image: image ?? this.image,
        active: active ?? this.active,
        color: color ?? this.color,
        breed: breed ?? this.breed,
        createOn: createOn ?? this.createOn,
      );

  factory PetModel.fromJson(String str) => PetModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PetModel.fromMap(Map<String, dynamic> json) => PetModel(
    id: json["id"],
    parentId: json["parentID"],
    name: json["name"],
    type: json["type"],
    birthdate: DateTime.parse(json["birthdate"]),
    gender: json["gender"],
    image: json["image"],
    active: json["active"],
    color: json["color"],
    breed: json["breed"],
    createOn: json["createOn"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "parentID": parentId,
    "name": name,
    "type": type,
    "birthdate": "${birthdate.year.toString().padLeft(4, '0')}-${birthdate.month.toString().padLeft(2, '0')}-${birthdate.day.toString().padLeft(2, '0')}",
    "gender": gender,
    "image": image,
    "active": active,
    "color": color,
    "breed": breed,
    "createOn": createOn,
  };
}
