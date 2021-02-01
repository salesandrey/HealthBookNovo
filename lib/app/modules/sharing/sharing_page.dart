import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../style/theme.dart';
import 'sharing_controller.dart';

class SharingPage extends StatefulWidget {

  @override
  _SharingPageState createState() => _SharingPageState();
}

class _SharingPageState extends ModularState<SharingPage, SharingController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: ColorsApp.KPrimaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,false);
          },
          icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
        ),
        title: Text(
          "Compartilhamento de perfil",
          style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("Compartilhar perfil com:",style: TextStyle(fontFamily: "Montserrat SemiBold",color: Colors.black,fontSize: 14),textAlign: TextAlign.left),
            Text("Compartilhar as informações do perfil referente à:",style: TextStyle(fontFamily: "Montserrat SemiBold",color: Colors.black,fontSize: 14),textAlign: TextAlign.left),
            Text("A pessoa para quem você vai compartilhar seu perfil é um profissional da saúde?",style: TextStyle(fontFamily: "Montserrat SemiBold",color: Colors.black,fontSize: 14),textAlign: TextAlign.left),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,borderRadius: BorderRadius.circular(7),
            ),child: Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent,unselectedWidgetColor:Colors.white,accentColor: Colors.white),
              child: ExpansionTile(title: null),
            ))

          ],
        ),
      ),
    );
  }
}
