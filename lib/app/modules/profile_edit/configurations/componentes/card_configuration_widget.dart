import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:HealthBook/app/utils/new_icons_icons.dart';

class CardConfigurationWidget extends StatelessWidget {


  final String imageIcon;
  final String title;
  final String subtitle;
  final Function navigator;
  final IconData icon;

  CardConfigurationWidget({Key key, this.imageIcon, this.title, this.subtitle, this.navigator, this.icon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(

        child: Center(
          child: ListTile(
            onTap: navigator,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(icon,size: 36,color: Colors.black),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
            title: Text(title,style: TextStyle(fontFamily: "Montserrat Medium",color: ColorsApp.KBlackColor,fontSize: 14)),
            subtitle: Text(subtitle,style: TextStyle(fontFamily: "Montserrat Medium",color: ColorsApp.KTertiaryColor,fontSize: 12)),
          ),
        ),
      ),
    );
  }
}
