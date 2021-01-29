import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:menu_button/menu_button.dart';

class TypeDocumentWidget extends StatelessWidget {

  final String currentSelection;
  final Function changeType;

  final List<String> items = ["Pedido de exame","Resultado de exame","Prontuário","Receita","Vacina"];

  TypeDocumentWidget({Key key, this.currentSelection, this.changeType}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Widget button = Container(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(25))
      ),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(AssetImage("assets/images/icons/pills.png"),color: Colors.grey,),
              SizedBox(width: 10),
              Text(
                currentSelection,
                style: TextStyle(color: ColorsApp.KTertiaryColor, fontSize: 13,fontFamily: "Montserrat Regular"),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 20,
          ),
        ],
      ),
    );

    return Container(
      child: MenuButton(
        child: button,
        items: items,
        itemBuilder: (value) => Container(
            width: 83,
            height: 40,
            color: Colors.white,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(value,style: TextStyle(color: Colors.grey,fontFamily: "Montserrat Regular",fontSize: 13))
        ),
        toggledChild: Container(
          color: Colors.white,
          child: button,// Widget displayed as the button,
        ),
        divider: Container(),
        onItemSelected: changeType,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFF0EFF4)),
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        onMenuButtonToggle: (isToggle) {},
      )
    );
  }
}
