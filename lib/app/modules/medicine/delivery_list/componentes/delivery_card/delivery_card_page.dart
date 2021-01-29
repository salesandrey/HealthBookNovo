import 'package:flutter/material.dart';
import 'package:HealthBook/app/models/address_model.dart';
import 'delivery_card_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
class DeliveryCardWidget extends StatelessWidget {

  final String address;
  final String addressCheck;
  final DeliveryCardController controller;
  final String imagePath;

  const DeliveryCardWidget({Key key, this.address, this.controller, this.imagePath, this.addressCheck}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 9),
        child: Container(
          height: 91,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
          ),
          child: Card(
            margin: EdgeInsets.zero,
            elevation: 3,
            shadowColor: Color(0xFFD6D6D6),
            child: Center(
              child: CheckboxListTile(
                activeColor: Colors.black,
                value: controller.active,
                onChanged: controller.changeActive,
                contentPadding: EdgeInsets.symmetric(vertical: 6,horizontal: 15),
                title: Row(
                  children: [
                    Transform.scale(scale: 1.5,child: ImageIcon(AssetImage(imagePath))),
                    SizedBox(width: 12),
                    Flexible(
                      child: Text(address,
                        style: TextStyle(fontFamily: "Montserrat Medium",fontSize: 14,color: Color(0xFF999999)),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}