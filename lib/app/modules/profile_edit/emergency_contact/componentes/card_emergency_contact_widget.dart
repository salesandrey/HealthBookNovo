import 'package:HealthBook/app/models/emergency_contact_model.dart';
import 'package:flutter/material.dart';


class CardEmergencyContactWidget extends StatelessWidget {

  final EmergencyContactModel contact;
  final Function deleteEmergencyContact;

  const CardEmergencyContactWidget({Key key, this.contact, this.deleteEmergencyContact}) : super(key: key);

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
              onTap: deleteEmergencyContact,
              child: ImageIcon(AssetImage("assets/images/icons/delete.png"))),
          title: Text(contact.name,style: TextStyle(fontFamily: "Montserrat Medium",fontSize: 14,color: Color(0xFF999999)),),
        ),
      ),
    );
  }
}
