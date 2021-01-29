

import 'package:HealthBook/app/componentes/TileDisease/tile_disease_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';



class TileDiseaseWidget extends StatelessWidget {

  final TileDiseaseModel tileDisease;

  const TileDiseaseWidget({Key key, this.tileDisease}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return Container(width: 180,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title:Text(tileDisease.title,style: TextStyle(color: Color(0xFF999999),fontFamily: "Montserrat Medium",fontSize: 12),),
            leading: Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.black, // Your color
              ),
              child: Checkbox(
                  value: tileDisease.check,
                  activeColor: Colors.black,
                  onChanged: tileDisease.setCheck),
            ),),
        );
    });
  }
}

