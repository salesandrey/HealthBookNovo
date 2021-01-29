import 'package:flutter/material.dart';
import 'package:HealthBook/app/utils/month_map.dart';
import 'package:HealthBook/app/models/estimate_model.dart';


class EstimateCardWidget extends StatelessWidget {

  final EstimateModel estimate;
  final Color colorCard;
  final String status;
  final Color statusColor;
  final Function navigation;

  const EstimateCardWidget({Key key, this.estimate, this.colorCard, this.status, this.navigation, this.statusColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color(0xFFFAFAFA),
      height: 193,
      child: Row(
        children: [
          Expanded(flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      estimate.createOn.day.toString(),
                      style: TextStyle(
                          fontSize: 40,
                          color: Color(0xFF0F1B29),
                          fontFamily: "Montserrat Bold"),
                    ),
                    Text(
                      MonthMap.month[estimate.createOn.month],
                      style: TextStyle(
                          fontFamily: "Montserrat Bold",
                          color: Color(0xFF999999),
                          fontSize: 20),
                    ),
                    Text(
                      estimate.createOn.year.toString(),
                      style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 17,
                          fontFamily: "Montserrat Bold"),
                    ),
                  ],
                ))),
          Expanded(flex: 7,child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "ID do orçamento: ",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF999999),
                            fontFamily: "Montserrat SemiBold")),
                    TextSpan(
                        text: estimate.id,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF0F1B29),
                            fontFamily: "Montserrat Bold"))
                  ]),
                ),
                SizedBox(height: 10),
                Container(child: Text(status,style: TextStyle(fontFamily: "Montserrat SemiBold",color: statusColor))),
                SizedBox(height: 10),
                Container(
                  height: 37,
                  width: 162,
                  child: ElevatedButton(
                    child: Text("VER DETALHES",style: TextStyle(color: Colors.white,fontFamily: "Montserrat Bold",fontSize: 10),),
                    onPressed: navigation,
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))),
                  ),
                )
              ],
            )))
        ],
      ),
    );
  }
}
