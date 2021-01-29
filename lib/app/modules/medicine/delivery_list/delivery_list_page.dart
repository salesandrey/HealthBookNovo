import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'delivery_list_controller.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'componentes/delivery_card/delivery_card_page.dart';
import 'componentes/delivery_card/delivery_card_controller.dart';

class DeliveryListPage extends StatefulWidget {

  @override
  _DeliveryListPageState createState() => _DeliveryListPageState();
}

class _DeliveryListPageState extends ModularState<DeliveryListPage, DeliveryListController> {

  @override
  void initState() {
    controller.getAddress();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: ColorsApp.KPrimaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
          ),
          title: Text(
            "Selecionar endereço",
            style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: <Widget>[
                SizedBox(height: 28),
                Text("Selecione o endereço que você deseja receber o pedido após o orçamento.",style: TextStyle(color: Color(0xFF0F1B29),fontFamily: "Montserrat Medium",fontSize: 12),),
                SizedBox(height: 28),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.list.isEmpty? 0 : controller.list.length,
                    itemBuilder: (context , index) {
                      return controller.list[index];
                    }),
                SizedBox(height: 56),
                MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.5,
                    height: 45,
                    shape: StadiumBorder(),
                    elevation: 0,
                    color: Colors.black,
                    child: Text("SELECIONAR",style: TextStyle(fontSize: 13,color: Colors.white,fontFamily: "Montserrat SemiBold"),),
                    onPressed: (){
                      Navigator.of(context).pushNamed("/PharmacyList");
                    }),
                SizedBox(height: 15),
                MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.5,
                    height: 45,
                    shape: StadiumBorder(side:BorderSide(color: Colors.black,width: 1)),
                    elevation: 0,
                    color: Colors.white,
                    child: Text("ADICIONAR OUTRO",style: TextStyle(fontSize: 13,color: Colors.black,fontFamily: "Montserrat SemiBold"),),
                    onPressed: (){
                      Navigator.of(context).pushNamed("/AddAddress",arguments: controller.medicineData.currentUser.id);

                    }),

              ],
            ),
          ),
        ),
      );
    });

  }
}
