import 'dart:convert';

class SharingModel {
  SharingModel({
    this.id,
    this.sharingFrom,
    this.sharingTo,
    this.sharingFromName,
    this.email,
    this.sharingToName,
    this.sharingFromFileName,
    this.sharingToFileName,
    this.createOn,
    this.type,
    this.sharingOptions,
    this.active,
  });

  final String id;
  final String sharingFrom;
  final String sharingTo;
  final String sharingFromName;
  final String email;
  final String sharingToName;
  final String sharingFromFileName;
  final String sharingToFileName;
  final DateTime createOn;
  final String type;
  final String sharingOptions;
  final String active;

  SharingModel copyWith({
    String id,
    String sharingFrom,
    String sharingTo,
    String sharingFromName,
    String email,
    String sharingToName,
    String sharingFromFileName,
    String sharingToFileName,
    DateTime createOn,
    String type,
    String sharingOptions,
    String active,
  }) =>
      SharingModel(
        id: id ?? this.id,
        sharingFrom: sharingFrom ?? this.sharingFrom,
        sharingTo: sharingTo ?? this.sharingTo,
        sharingFromName: sharingFromName ?? this.sharingFromName,
        email: email ?? this.email,
        sharingToName: sharingToName ?? this.sharingToName,
        sharingFromFileName: sharingFromFileName ?? this.sharingFromFileName,
        sharingToFileName: sharingToFileName ?? this.sharingToFileName,
        createOn: createOn ?? this.createOn,
        type: type ?? this.type,
        sharingOptions: sharingOptions ?? this.sharingOptions,
        active: active ?? this.active,
      );

  factory SharingModel.fromJson(String str) => SharingModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SharingModel.fromMap(Map<String, dynamic> json) => SharingModel(
    id: json["id"],
    sharingFrom: json["sharingFrom"],
    sharingTo: json["sharingTo"],
    sharingFromName: json["SharingFromName"],
    email: json["email"],
    sharingToName: json["SharingToName"],
    sharingFromFileName: json["SharingFromFileName"],
    sharingToFileName: json["SharingToFileName"],
    createOn: DateTime.parse(json["createOn"]),
    type: json["type"],
    sharingOptions: json["sharingOptions"],
    active: json["active"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "sharingFrom": sharingFrom,
    "sharingTo": sharingTo,
    "SharingFromName": sharingFromName,
    "email": email,
    "SharingToName": sharingToName,
    "SharingFromFileName": sharingFromFileName,
    "SharingToFileName": sharingToFileName,
    "createOn": "${createOn.year.toString().padLeft(4, '0')}-${createOn.month.toString().padLeft(2, '0')}-${createOn.day.toString().padLeft(2, '0')}",
    "type": type,
    "sharingOptions": sharingOptions,
    "active": active,
  };
}
