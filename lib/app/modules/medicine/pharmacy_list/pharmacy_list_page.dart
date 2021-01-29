import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pharmacy_list_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:HealthBook/app/style/size_config.dart';
import 'dart:async';

class PharmacyListPage extends StatefulWidget {

  @override
  _PharmacyListPageState createState() => _PharmacyListPageState();
}

class _PharmacyListPageState extends ModularState<PharmacyListPage, PharmacyListController> {



  @override
  void initState() {
    controller.getPharmacies();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Observer(builder: (context){
      return ModalProgressHUD(
        inAsyncCall: controller.loading,
        child: Scaffold(
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
              "Selecionar farmácias",
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
                  Text("Você receberá um orçamento das farmácias que selecionar",style: TextStyle(color: Color(0xFF0F1B29),fontFamily: "Montserrat Medium",fontSize: 12),),
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
                      onPressed: () async{
                        controller.changeLoading(true);
                        await controller.saveEstimative();
                        controller.changeLoading(false);

                        showModalBottomSheet(
                            context: context,
                            enableDrag: false,
                            isDismissible: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
                            ),
                            builder: (BuildContext context){

                                Timer(Duration(seconds: 2),(){
                                  controller.store.car.clear();
                                Navigator.of(context).pushNamedAndRemoveUntil('/', ModalRoute.withName('/'));

                              });

                              return Container(
                                child: Column(
                                  children: [
                                    Flexible(flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top:35.0,bottom: 20),
                                        child: Container(
                                            width: SizeConfig.safeBlockHorizontal * 30,
                                            height: SizeConfig.safeBlockVertical * 30,
                                            child:Image.asset("assets/images/circle.png")),
                                      ),
                                    ),
                                    Flexible(child:Text("Solicitação Enviada!",textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF0F1B29),fontFamily: "Montserrat Bold",fontSize:SizeConfig.safeBlockHorizontal*5),)),
                                  ],
                                ),
                              );
                            });


                      }),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      );
    });

  }
}
