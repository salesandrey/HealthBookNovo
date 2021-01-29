import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';



class ResetSuccessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: MediaQuery.of(context).size.height *0.5,margin: EdgeInsets.symmetric(horizontal: 45.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child:Image.asset("assets/images/padlock.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sua senha foi redefinida",style: TextStyle(color: Color(0xFF0F1B29),fontFamily: "Montserrat Bold",fontSize: 16)),
            ),
            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut.",textAlign: TextAlign.justify,
              style: TextStyle(color: ColorsApp.lightGray,fontSize: 12,fontFamily: "Montserrat Medium"),),
            SizedBox(height: 39,),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.06,
              margin: EdgeInsets.only(left: 40,right: 41),
              decoration: BoxDecoration(color: ColorsApp.dark, boxShadow:[
                BoxShadow(
                    color: ColorsApp.lightBlue.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  onPressed: () async{
                    Modular.to.pushReplacementNamed("/Login");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ENTRAR',style: TextStyle(
                        fontFamily: 'Montserrat SemiBold',
                        fontSize: 13,
                        color: Colors.white)),
                  SizedBox(width: 3),
                  Image.asset('assets/images/forward.png',height: 12,)
                ],
              )),
            ),
          ],));
  }
}
