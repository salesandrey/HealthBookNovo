import 'package:flutter/material.dart';
import 'package:HealthBook/app/style/theme.dart';

class TileActionWidget extends StatelessWidget {


  final String title;
  final IconData icon;
  final Function navigator;

  const TileActionWidget({Key key, this.title, this.icon, this.navigator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color(0xfffafafa),
      ),
      child: Center(
        child: ListTile(
          onTap: navigator,
          leading: Icon(
            icon,
            color: ColorsApp.KBlackColor,
            size: 28,
          ),
          title: Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontFamily: "Montserrat Medium",
                color: ColorsApp.KBlackColor),
          ),
        ),
      ),
    );
  }
}
