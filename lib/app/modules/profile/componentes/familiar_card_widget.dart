import 'package:flutter/material.dart';
import 'package:HealthBook/app/utils/junk_icon_icons.dart';

class FamiliarCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          ),
          elevation: 3,
          shadowColor: Color(0xFFD6D6D6),
          child: Center(
            child: ListTile(
              trailing: IconButton(icon: Icon(JunkIcon.junk), onPressed: null),
              leading:CircleAvatar(maxRadius: 35,backgroundColor: Colors.black),
              subtitle: Text("Parentesco",style: TextStyle(fontSize: 14,color: Color(0xFF999999),fontFamily: "Montserrat Medium")),
              contentPadding: EdgeInsets.symmetric(
                  vertical: 6, horizontal: 15),
              title: Container(
                padding: EdgeInsets.only(bottom: 3),
                child: Text("Nome do familiar", overflow: TextOverflow.clip,
                  style: TextStyle(fontFamily: "Montserrat Medium",
                      fontSize: 16,
                      color: Color(0xFF0F1B29)),),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
