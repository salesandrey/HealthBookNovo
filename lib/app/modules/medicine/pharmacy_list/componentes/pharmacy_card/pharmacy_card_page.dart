import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pharmacy_card_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


class PharmacyCardWidget extends StatelessWidget {
  final String title;
  final PharmacyCardController controller;
  final String imagePath;
  final String id;

  const PharmacyCardWidget(
      {Key key, this.title, this.controller, this.imagePath, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 9),
        child: Container(
          height: 91,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
          ),
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              side: controller.active?BorderSide(color: Color(0xFF565656),width: 2):BorderSide.none
            ),
            elevation: 3,
            shadowColor: Color(0xFFD6D6D6),
            child: Center(
              child: CheckboxListTile(
                secondary: CircleAvatar(maxRadius: 35,backgroundColor: Colors.black,backgroundImage:imagePath==null?AssetImage("assets/images/icons/pharmacy.png"):NetworkImage("https://health.lanconi.com.br/uploads/${imagePath}")),
                subtitle: Row(
                  children: [
                    Transform.scale(scale: 0.7,child: ImageIcon(AssetImage("assets/images/icons/location.png"),color: Color(0xFF00D1FB),)),
                    Text("Distance"),
                  ],
                ),
                activeColor: Colors.black,
                value: controller.active,
                onChanged: controller.changeActive,
                contentPadding: EdgeInsets.symmetric(
                    vertical: 6, horizontal: 15),
                title: Text(title,
                  style: TextStyle(fontFamily: "Montserrat Medium",
                      fontSize: 14,
                      color: Color(0xFF999999)),),
              ),
            ),
          ),
        ),
      );
    });
  }
}