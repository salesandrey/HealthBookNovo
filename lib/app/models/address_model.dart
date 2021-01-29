import 'dart:convert';

class AddressModel {
  AddressModel({
    this.id,
    this.patientId,
    this.cep,
    this.address,
    this.address2,
    this.addressnumber,
    this.neigh,
    this.city,
    this.district,
    this.coord,
    this.createdOn,
    this.active,
  });

  final String id;
  final String patientId;
  final String cep;
  final String address;
  final String address2;
  final String addressnumber;
  final String neigh;
  final String city;
  final String district;
  final String coord;
  final DateTime createdOn;
  final String active;

  AddressModel copyWith({
    String id,
    String patientId,
    String cep,
    String address,
    String address2,
    String addressnumber,
    String neigh,
    String city,
    String district,
    String coord,
    DateTime createdOn,
    String active,
  }) =>
      AddressModel(
        id: id ?? this.id,
        patientId: patientId ?? this.patientId,
        cep: cep ?? this.cep,
        address: address ?? this.address,
        address2: address2 ?? this.address2,
        addressnumber: addressnumber ?? this.addressnumber,
        neigh: neigh ?? this.neigh,
        city: city ?? this.city,
        district: district ?? this.district,
        coord: coord ?? this.coord,
        createdOn: createdOn ?? this.createdOn,
        active: active ?? this.active,
      );

  factory AddressModel.fromJson(String str) => AddressModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddressModel.fromMap(Map<String, dynamic> json) => AddressModel(
    id: json["id"],
    patientId: json["patientID"],
    cep: json["cep"],
    address: json["address"],
    address2: json["address2"],
    addressnumber: json["addressnumber"],
    neigh: json["neigh"],
    city: json["city"],
    district: json["district"],
    coord: json["coord"],
    createdOn: DateTime.parse(json["createdOn"]),
    active: json["active"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "patientID": patientId,
    "cep": cep,
    "address": address,
    "address2": address2,
    "addressnumber": addressnumber,
    "neigh": neigh,
    "city": city,
    "district": district,
    "coord": coord,
    "createdOn": "${createdOn.year.toString().padLeft(4, '0')}-${createdOn.month.toString().padLeft(2, '0')}-${createdOn.day.toString().padLeft(2, '0')}",
    "active": active,
  };
}
