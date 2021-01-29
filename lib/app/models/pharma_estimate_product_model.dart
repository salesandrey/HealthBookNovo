import 'dart:convert';

class PharmacyEstimateProductModel {
  PharmacyEstimateProductModel({
    this.estimateItemId,
    this.name,
    this.concentration,
    this.qtd,
    this.un,
    this.price,
    this.totalPrice,
    this.status,
  });

  final String estimateItemId;
  final String name;
  final String concentration;
  final String qtd;
  final String un;
  final String price;
  final String totalPrice;
  final String status;

  PharmacyEstimateProductModel copyWith({
    String estimateItemId,
    String name,
    String concentration,
    String qtd,
    String un,
    String price,
    String totalPrice,
    String status,
  }) =>
      PharmacyEstimateProductModel(
        estimateItemId: estimateItemId ?? this.estimateItemId,
        name: name ?? this.name,
        concentration: concentration ?? this.concentration,
        qtd: qtd ?? this.qtd,
        un: un ?? this.un,
        price: price ?? this.price,
        totalPrice: totalPrice ?? this.totalPrice,
        status: status ?? this.status,
      );

  factory PharmacyEstimateProductModel.fromJson(String str) => PharmacyEstimateProductModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PharmacyEstimateProductModel.fromMap(Map<String, dynamic> json) => PharmacyEstimateProductModel(
    estimateItemId: json["estimateItemID"],
    name: json["name"],
    concentration: json["concentration"],
    qtd: json["qtd"],
    un: json["un"],
    price: json["price"],
    totalPrice: json["totalPrice"],
    status: json["status"],
  );

  Map<String, dynamic> toMap() => {
    "estimateItemID": estimateItemId,
    "name": name,
    "concentration": concentration,
    "qtd": qtd,
    "un": un,
    "price": price,
    "totalPrice": totalPrice,
    "status": status,
  };
}
