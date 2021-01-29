import 'dart:math';

import 'package:HealthBook/app/models/pharmacy_estimate_list_model.dart';
import 'package:HealthBook/app/utils/month_map.dart';
import 'package:flutter/material.dart';


class CardEstimateDetailsWidget extends StatelessWidget {


  final PharmacyEstimateListModel estimatePharmacy;
  final Color colorCard;
  final Function navigation;

  const CardEstimateDetailsWidget(
      {Key key, this.estimatePharmacy, this.colorCard, this.navigation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      color: Color(0xFFFAFAFA),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex: 3,
              child: Container(
                padding: EdgeInsets.only(top: 24),
                  child: Column(
                    children: [
                      Text(
                        estimatePharmacy.createdOn.day.toString(),
                        style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFF0F1B29),
                            fontFamily: "Montserrat Bold"),
                      ),
                      Text(
                        MonthMap.month[estimatePharmacy.createdOn.month],
                        style: TextStyle(
                            fontFamily: "Montserrat Bold",
                            color: Color(0xFF999999),
                            fontSize: 20),
                      ),
                      Text(
                        estimatePharmacy.createdOn.year.toString(),
                        style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 17,
                            fontFamily: "Montserrat Bold"),
                      ),
                    ],
                  ))),
          Expanded(flex: 7,
              child: Container(padding: EdgeInsets.only(top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Estabelecimento:",textAlign: TextAlign.left,style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 14,color: Color(0xFF0F1B29))),
                  Text(estimatePharmacy.pharmaName,textAlign: TextAlign.left,style: TextStyle(fontFamily: "Montserrat Medium",fontSize: 14,color: Color(0xFF0F1B29))),
                  SizedBox(height: 18),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: estimatePharmacy.items.length,
                      itemBuilder: (context,index){
                    return Container(
                      padding: EdgeInsets.only(bottom: 18,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                estimatePharmacy.items[index].name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 14,
                                    fontFamily: "Montserrat Medium")),
                            Text(estimatePharmacy.items[index].price,style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 14,
                                fontFamily: "Montserrat Medium"))
                          ],
                        ));
                  }),
                  SizedBox(height: 18),
                  Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Divider(thickness: 2.0,color: Colors.black,)),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Total: ",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF0F1B29),
                                    fontFamily: "Montserrat Bold")),
                            TextSpan(
                                text: "R\$ ${estimatePharmacy.totalPrice}",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF0F1B29),
                                    fontFamily: "Montserrat Medium"))
                          ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    height: 37,
                    width: 162,
                    child: ElevatedButton(
                      child: Text("VER DETALHES", style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat Bold",
                          fontSize: 10),),
                      onPressed: navigation,
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.black),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(borderRadius: BorderRadius
                                  .circular(6)))),
                    ),
                  )
                ],
              )))
        ],
      ),
    );
  }
}