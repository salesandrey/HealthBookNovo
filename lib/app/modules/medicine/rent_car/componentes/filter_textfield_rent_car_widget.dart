import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';

class FilterTextFieldRentCarWidget extends StatelessWidget {


  final Function changeFilter;
  final String hintText;

  FilterTextFieldRentCarWidget({Key key, @required this.changeFilter, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      alignment: Alignment.center,
      child: TextField(
        onChanged: changeFilter,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(color: ColorsApp.KTertiaryColor, fontSize: 14),
        keyboardType: TextInputType.text,
        decoration: new InputDecoration(
            suffixIcon: Transform.scale(scale: 0.4,child: ImageIcon(AssetImage('assets/images/icons/search.png'))),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
              borderRadius: BorderRadius.circular(8),
            ),
            border: OutlineInputBorder(),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 12, color: ColorsApp.KTertiaryColor,fontFamily: "Montserrat Regular"),
            contentPadding: EdgeInsets.symmetric(horizontal: 10)),
      ),
    );
  }
}
