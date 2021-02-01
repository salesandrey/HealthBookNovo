import 'package:HealthBook/app/modules/profile/componentes/add_familiar_button_widget.dart';
import 'package:HealthBook/app/modules/profile/componentes/profile_card_widget.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'componentes/familiar_card_widget.dart';
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
                child: ProfileCardWidget(
                  image: controller.currentUser.photo,
                  name: controller.currentUser.name,
                  email: controller.currentUser.email)),
              SizedBox(height: 50),
              Container(child: Text("Seus Familiares:",style: TextStyle(color: Colors.black,fontFamily: "Montserrat SemiBold",fontSize: 21), textAlign: TextAlign.left,)),
              FamiliarCardWidget(),
              AddFamiliarButtonWidget(
                  navigation: () => Navigator.of(context).pushNamed("/RegisterFamily"))

            ],
          ),
        ),
      );
    });
  }
}
