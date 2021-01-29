import 'package:HealthBook/app/models/address_model.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'address_controller.dart';
import 'componentes/card_address_widget.dart';

class AddressPage extends StatefulWidget {

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends ModularState<AddressPage, AddressController> {


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
              Navigator.pop(context,false);
            },
            icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
          ),
          title: Text(
            "Endereços de Entrega",
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
                    itemCount: controller.address==null? 0 : controller.address.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: CardAddressWidget(
                          address: controller.address[index],
                          deleteAddress: (){
                            controller.deleteAddress(controller.address[index]);
                          },
                        ),
                      );
                    }),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/ProfileEdit/AddAddress",arguments: controller.idUser).then((value){
                          if(value){
                            controller.getAddress();
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
                    Text("ADICIONAR NOVO",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: "Montserrat SemiBold"))
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
