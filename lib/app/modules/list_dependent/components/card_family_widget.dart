
import 'dart:ui';

import 'package:HealthBook/app/models/dependent_model.dart';
import 'package:flutter/material.dart';

class CardFamilyWidget extends StatelessWidget {

  final DependentModel dependent;

  const CardFamilyWidget({Key key, this.dependent}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color(0xff0F1B29),
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.white, unselectedWidgetColor:Colors.white,),
          child: ExpansionTile(
              trailing: Icon(Icons.arrow_forward_ios,size: 20,),
              leading: Icon(Icons.group,color: Colors.white,),
              title: Text(dependent.fullName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white,),textAlign: TextAlign.start,),
              children: [
            Card(color: Colors.white,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                SizedBox(
                  height: 120.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),

                      SizedBox(
                        width: 85.0,
                        height: 85.0,
                        child: Image(
                          image: dependent.photo==null?AssetImage("assets/images/round-person-24px@3x.png"):NetworkImage("https://health.lanconi.com.br/uploads/"+dependent.photo),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          FittedBox(
                            child: Text(
                              "CPF: " + dependent.cpf,
                              style: TextStyle(color: Colors.black, fontSize: 12.0,fontFamily: "Montserrat Regular"),
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "Data de Nascimento: " + dependent.birthday.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 12.0,fontFamily: "Montserrat Regular"),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "Sexo: " + dependent.sex,
                            style: TextStyle(color: Colors.black, fontSize: 12.0,fontFamily: "Montserrat Regular"),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "Parentesco: " + dependent.type.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 12.0,fontFamily: "Montserrat Regular"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )]),
        ));
  }
}
