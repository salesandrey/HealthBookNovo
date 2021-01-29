import 'package:HealthBook/app/componentes/CardMedicineWidget/card_medicine_widget_controller.dart';
import 'package:HealthBook/app/componentes/CardMedicineWidget/card_medicine_widget_page.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'list_medicines_controller.dart';

class ListMedicinesPage extends StatefulWidget {

  final UserModel currentUser;

  ListMedicinesPage({Key key, this.currentUser}) : super(key: key);

  @override
  _ListMedicinesPageState createState() => _ListMedicinesPageState(currentUser: currentUser);
}

class _ListMedicinesPageState extends ModularState<ListMedicinesPage, ListMedicinesController> {

  final UserModel currentUser;

  _ListMedicinesPageState({this.currentUser});

  @override
  void initState() {
    controller.changeCurrentUser(currentUser);
    controller.getMedicines();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
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
            "Lista de Medicamentos",
            style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 15,right: 15),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20,),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.medicines==null? 0 : controller.medicines.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: CardMedicineWidget(
                          imagePath: "assets/images/icons/pills.png",
                          visualizeMedicine: (){Navigator.of(context).pushNamed("/ViewMedicine",arguments: controller.medicines[index]);},
                          deleteDocument: (){controller.removeMedicine(controller.medicines[index]);},
                          updateMedicine: (){Navigator.of(context).pushNamed("/EditMedicine",arguments: controller.medicines[index]);},
                          controller: CardMedicineWidgetController(
                              medicine: controller.medicines[index],
                              navigator: (){}
                          ),
                        ),
                      );
                    }),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/RegisterMedicine",arguments: controller.currentUser.id).then((value) {
                          if(value){
                            controller.getMedicines();
                          }
                        });

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
                    Text("ADICIONAR MEDICAMENTO",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: "Montserrat SemiBold"))
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
