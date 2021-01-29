import 'package:HealthBook/app/models/address_model.dart';
import 'package:flutter/material.dart';


class CardAddressWidget extends StatelessWidget {

  final AddressModel address;
  final Function deleteAddress;

  const CardAddressWidget({Key key, this.address, this.deleteAddress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Card(
        elevation: 3,
        shadowColor: Color(0xFFD6D6D6),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 6,horizontal: 15),
          trailing: InkWell(
              onTap: deleteAddress,
              child: ImageIcon(AssetImage("assets/images/icons/delete.png"))),
          title: Text("${address.address},${address.addressnumber} \n${address.city} - ${address.district}",
            style: TextStyle(fontFamily: "Montserrat Medium",fontSize: 14,color: Color(0xFF999999)),),
        ),
      ),
    );
  }
}
