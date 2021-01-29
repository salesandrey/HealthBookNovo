import 'package:flutter/material.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:menu_button/menu_button.dart';

class UfTypeWidget extends StatelessWidget {
  final String currentSelection;
  final Function changeType;
  final List<String> items = [
    "AC",
    "AL",
    "AP",
    "AM",
    "BA",
    "CE",
    "DF",
    "ES",
    "GO",
    "MA",
    "MT",
    "MS",
    "MG",
    "PA",
    "PB",
    "PR",
    "PE",
    "PI",
    "RR",
    "RO",
    "RJ",
    "RN",
    "RS",
    "SC",
    "SP",
    "SE",
    "TO",
  ];

  UfTypeWidget({Key key, this.currentSelection, this.changeType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget button = Container(
      child:TextField(
      keyboardType: TextInputType.text,
      enabled: false,
      onTap: (){},
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(color: ColorsApp.KTertiaryColor, fontSize: 14),
      decoration: new InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 1,color: Colors.grey),
          ),
        prefixIcon: Transform.scale(scale: 0.4,child: ImageIcon(AssetImage("assets/images/icons/brazil.png"))),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: "UF", hintStyle:
      TextStyle(fontSize: 12, color: ColorsApp.KTertiaryColor,fontFamily: "Montserrat Regular"),
      ),
    ));

    return Container(
        child: MenuButton(
          child: button,
          items: items,
          popupHeight: 200,
          scrollPhysics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (value) =>
              Container(
                  width: 83,
                  height: 40,
                  color: Colors.white,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(value, style: TextStyle(color: Colors.grey,
                      fontFamily: "Montserrat Regular",
                      fontSize: 13))
              ),
          toggledChild: Container(
            color: Colors.white,
            child: button,
          ),
          divider: Container(),
          onItemSelected: changeType,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          ),
          onMenuButtonToggle: (isToggle) {},
        )
    );
  }
}
