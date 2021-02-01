import 'package:flutter/material.dart';

import '../../../style/theme.dart';



class ProfileCardWidget extends StatelessWidget {

  final String name;
  final String email;
  final String image;

  const ProfileCardWidget({Key key, this.name, this.email, this.image}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 117,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff0F1B29),
      ),
      child: Center(
        child: ListTile(
          leading: Container(
            height: 58,
            width: 58,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://health.lanconi.com.br/uploads/$image')),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          title: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: "Montserrat Medium"),
          ),
          subtitle: Text(
            email,
            style: TextStyle(color: ColorsApp.KTertiaryColor, fontSize: 13,fontFamily: "Montserrat Regular"),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ))));
  }

}
