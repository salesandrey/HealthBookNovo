import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'register_health_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'componentes/plane_hide_widget.dart';
import 'componentes/register_data_success_widget.dart';
import 'viewmodel/register_health_viewmodel.dart';

class RegisterHealthPage extends StatefulWidget {

  @override
  _RegisterHealthPageState createState() => _RegisterHealthPageState();
}

class _RegisterHealthPageState extends ModularState<RegisterHealthPage, RegisterHealthController> {


  List<DropdownMenuItem<String>> bloodItem = [
    DropdownMenuItem(child: Text("A+"),value: "A+",),
    DropdownMenuItem(child: Text("A-"),value: "A-",),
    DropdownMenuItem(child: Text("B+"),value: "B+",),
    DropdownMenuItem(child: Text("B-"),value: "B-",),
    DropdownMenuItem(child: Text("AB+"),value: "AB+",),
    DropdownMenuItem(child: Text("AB-"),value: "AB-",),
    DropdownMenuItem(child: Text("O+"),value: "O+",),
    DropdownMenuItem(child: Text("O-"),value: "O-",),
  ];

  @override
  void initState() {
    controller.createDiseases();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      return ModalProgressHUD(inAsyncCall: controller.loading,
        child: Scaffold(
            backgroundColor: ColorsApp.KPrimaryColor,
            appBar: AppBar(
              elevation: 2,
              backgroundColor: ColorsApp.KPrimaryColor,
              leading: IconButton(onPressed: () {Modular.to.pop();},icon: Icon(Icons.arrow_back, color: Color(0xff999999))),
              title: Text("Cadastro Geral", style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor)),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
                child: Container(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 50, bottom: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Tipo Sanguíneo",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: ColorsApp.KBlackColor,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                height: 43,
                                alignment: Alignment.center,
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    border: OutlineInputBorder(),
                                    hintText: 'Tipo Sanguíneo',
                                    hintStyle: TextStyle(
                                        height: 1.6, fontSize: 12, color: ColorsApp.KTertiaryColor),
                                    contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                    prefixIcon: Container(
                                      width: 50,
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 13,
                                            child: Image(image: AssetImage('assets/images/blood-type@3x.png')),
                                          ),
                                        ],
                                      ),
                                    ),),
                                  elevation: 16,
                                  style: TextStyle(color: Colors.black),
                                  onChanged: controller.changeBloodType,
                                  items: bloodItem,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 60),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Doenças Crônicas",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: ColorsApp.KBlackColor,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(height: 10),
                              Wrap(
                                  children: controller.diseases)
                            ],
                          ),
                          SizedBox(height: 50),
                          Container(
                            child: Text("Possui Connect SUS?",style: TextStyle(color: ColorsApp.KBlackColor,fontSize: 14,fontWeight: FontWeight.w800),),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: [
                                Switch(
                                  value: controller.connectSUS,
                                  onChanged: controller.changeConnectSUS,
                                  activeColor: ColorsApp.KBlackColor,
                                  activeTrackColor: ColorsApp.KSecondaryColor,
                                  inactiveTrackColor: ColorsApp.KSecondaryColor,
                                  inactiveThumbColor: Colors.grey,

                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Possui Plano de Saúde?",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: ColorsApp.KBlackColor,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  height: 43,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    ),
                                    color: ColorsApp.KBlackColor,
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                            children: [
                                              Container(width: 55,height: 35,
                                                child: Switch(
                                                  value: controller.havePlane,
                                                  onChanged: controller.changeHavePlane,
                                                  activeColor: ColorsApp.KSecondaryColor,
                                                  activeTrackColor: ColorsApp.KPrimaryColor,
                                                  inactiveTrackColor: ColorsApp.KSecondaryColor,
                                                  inactiveThumbColor: Colors.grey,
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Container(
                                                  child: Text(
                                                    controller.havePlane ? "Possuo" : "Não possuo",
                                                    style: TextStyle(color: ColorsApp.KPrimaryColor),
                                                  ))])])),
                              Visibility(visible: controller.havePlane,child: PlaneHideWidget(
                                changeNumberCard: controller.changeNumberCard,takePhoto: controller.takePhoto,
                                image: controller.imagePlane,
                                changeOperator: controller.changeOperator,))
                            ],
                          ),
                          Builder(
                            builder:(c) => Container(
                                margin: const EdgeInsets.only(top: 60),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: 150,
                                          height: 45,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all(Colors.black) ,
                                                  visualDensity: VisualDensity.adaptivePlatformDensity,
                                                  shape: MaterialStateProperty.all(StadiumBorder())),
                                              child: Text("SALVAR",style: TextStyle(fontFamily: "Montserrat SemiBold",color: Colors.white,fontSize: 13),),
                                              onPressed: () async {

                                                if(RegisterHealthViewModel().validateFields(controller, c)) {
                                                  controller.changeLoading(true);
                                                  await controller.saveData();
                                                  controller.changeLoading(false);
                                                  showModalBottomSheet(
                                                      enableDrag: false,
                                                      isScrollControlled: false,
                                                      isDismissible: false,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: new BorderRadius
                                                              .only(
                                                              topLeft: const Radius
                                                                  .circular(20.0),
                                                              topRight: const Radius
                                                                  .circular(
                                                                  20.0))),
                                                      context: context,
                                                      builder: (
                                                          BuildContext context) {
                                                        return RegisterDataSuccessWidget();
                                                      });
                                                }
                                              }
                                          ))])),
                          )])))),
      );
    });
  }
}
