import 'package:HealthBook/app/modules/profile_edit/emergency_contact/componentes/card_emergency_contact_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'emergency_contact_controller.dart';
import 'package:HealthBook/app/style/theme.dart';

class EmergencyContactPage extends StatefulWidget {

  final String userID;

  const EmergencyContactPage({Key key, this.userID}) : super(key: key);

  @override
  _EmergencyContactPageState createState() => _EmergencyContactPageState(userID: userID);
}

class _EmergencyContactPageState extends ModularState<EmergencyContactPage,EmergencyContactController> {


  final String userID;

  _EmergencyContactPageState({this.userID});


  @override
  void initState() {
    controller.changeUserID(userID);
    print(controller.userID);
    controller.getContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      return Scaffold(
        backgroundColor: Colors.white,
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
            "Contatos de emergência",
            style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor,fontFamily: "Montserrat SemiBold"),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.contacts==null?0:controller.contacts.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: CardEmergencyContactWidget(
                          contact: controller.contacts[index],
                          deleteEmergencyContact: (){controller.removeContact(controller.contacts[index]);},
                        ),
                      );
                    }),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/ProfileEdit/AddEmergencyContact",arguments: controller.userID).then((value) {
                          if(value){
                            controller.getContacts();
                          }});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8,bottom: 16,top: 16),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xffFFCF3B),
                          ),
                          child: Icon(Icons.add,size: 30,),
                        ),
                      ),
                    ),
                    Text("ADICIONAR CONTATO DE EMERGÊNCIA",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: "Montserrat SemiBold"))
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });

  }
}
