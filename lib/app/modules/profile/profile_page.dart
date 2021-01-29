import 'package:HealthBook/app/modules/home/componentes/drawers_widget.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {


   @override
  void initState() {
    controller.getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if(controller.currentUser==null){
        return Scaffold(
            body: Center(
                child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)))
        );
      }
      return Scaffold(
        backgroundColor: ColorsApp.KPrimaryColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: (){
                  Modular.to.pushReplacementNamed("/ProfileEdit",arguments: controller.currentUser);
                },
                child: Container(
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
                          image: DecorationImage(image: NetworkImage('https://health.lanconi.com.br/uploads/${controller.currentUser.photo}')),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      title: Text(
                        controller.currentUser.name,
                        style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: "Montserrat Medium"),
                      ),
                      subtitle: Text(
                        controller.currentUser.email,
                        style: TextStyle(color: ColorsApp.KTertiaryColor, fontSize: 13,fontFamily: "Montserrat Regular"),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
