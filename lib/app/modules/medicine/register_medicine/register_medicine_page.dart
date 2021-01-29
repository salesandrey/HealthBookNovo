import 'package:HealthBook/app/modules/medicine/componentes/medicine_continuing_widget.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'register_medicine_controller.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/services.dart';
import 'viewmodel/medicine_viewmodel.dart';

class RegisterMedicinePage extends StatefulWidget {

  final String userID;

  const RegisterMedicinePage({Key key, this.userID}) : super(key: key);

  @override
  _RegisterMedicinePageState createState() => _RegisterMedicinePageState(userID: userID);
}

class _RegisterMedicinePageState extends ModularState<RegisterMedicinePage, RegisterMedicineController> {


  final String userID;

  _RegisterMedicinePageState({this.userID});

  @override
  void initState() {
    controller.changeUserId(userID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return ModalProgressHUD(inAsyncCall: controller.loading,
        child: Scaffold(
          backgroundColor: ColorsApp.KPrimaryColor,
          appBar: AppBar(
            elevation: 2,
            backgroundColor: ColorsApp.KPrimaryColor,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context,false);
              },
              icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
            ),
            title: Text(
              "Cadastro de Medicamentos",
              style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
            ),
            centerTitle: true,
          ),
          body: Builder(
            builder:(c) => SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Data do registro",
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
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorsApp.KTertiaryColor,
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                child: Image(
                                  image: AssetImage('assets/images/Icon material-date-range_white@3x.png'),
                                  height: 20,
                                ),
                              ),
                              Container(
                                child: Text(controller.dateRegister,style: TextStyle(color: Colors.white),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Nome do medicamento",
                                style: TextStyle(fontSize: 14,
                                    color: ColorsApp.KBlackColor,
                                    fontFamily: "Montserrat SemiBold"),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                              child: TextField(
                                onChanged: controller.changeNameMedicine,
                                keyboardType: TextInputType.text,
                                decoration: new InputDecoration(
                                    prefixIcon:Container(
                                      width: 50,
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 16,
                                            child: Image(
                                              image: AssetImage('assets/images/Icon awesome-pills@3x.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
                                        borderRadius: BorderRadius.circular(8)),
                                    border: OutlineInputBorder(),
                                    hintText: 'Nome do medicamento',
                                    hintStyle: TextStyle(
                                        height: 1.6, fontSize: 12, color: ColorsApp.KTertiaryColor,fontFamily: "Montserrat Regular"),
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Dosagem do medicamento",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorsApp.KBlackColor,
                                    fontFamily: "Montserrat SemiBold"),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                              child: TextField(
                                onChanged: controller.changeDosage,
                                keyboardType: TextInputType.number,
                                decoration: new InputDecoration(
                                    prefixIcon: Container(width: 50,
                                      child:Column(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 16,
                                            child: Image(
                                              image: AssetImage('assets/images/blood-type@3x.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    border: OutlineInputBorder(),
                                    hintText: 'Dosagem(Em mg)',
                                    hintStyle: TextStyle(
                                        height: 1.6, fontSize: 12, color: ColorsApp.KTertiaryColor,fontFamily: "Montserrat Regular"),
                                    contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10)),
                              ),
                            ),
                            SizedBox(height: 50),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Horário do Medicamento",
                                    style: TextStyle(fontSize: 14,
                                        color: ColorsApp.KBlackColor,
                                        fontFamily: "Montserrat SemiBold"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  alignment: Alignment.center,
                                  child: TextField(
                                    onChanged: controller.changeTimeMedicine,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      HoraInputFormatter()
                                    ],
                                    decoration: new InputDecoration(
                                        prefixIcon:Transform.scale(scale: 0.4,child: ImageIcon(AssetImage("assets/images/icons/time.png"))),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: ColorsApp.KSecondaryColor,),
                                            borderRadius: BorderRadius.circular(8)),
                                        border: OutlineInputBorder(),
                                        hintText: 'Horário do Medicamento',
                                        hintStyle: TextStyle(
                                            height: 1.6, fontSize: 12, color: ColorsApp.KTertiaryColor,fontFamily: "Montserrat Regular"),
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 50),
                            Container(
                              child: Text(
                                "Foto da Receita",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorsApp.KBlackColor,
                                    fontFamily: "Montserrat SemiBold"),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                InkWell(
                                  onTap: () async{ await controller.changeImageDoc();setState(() {});},
                                  child: DottedBorder(
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(8),
                                      color: ColorsApp.KTertiaryColor,
                                      dashPattern: [8, 8, 8, 8],
                                      child:controller.imageDoc==null?Container(
                                        alignment: Alignment.center,
                                        height: 176,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height:52,
                                              child: Image(
                                                image: AssetImage('assets/images/Grupo 3811@3x.png'),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(top: 20),
                                              child: Text(
                                                "envie uma imagem\ndo seu dispositivo",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    height: 2,
                                                    fontSize: 14,
                                                    color: Color(0xffA4A4A4),fontFamily: "Montserrat Regular"),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ):Container(height: 176,alignment: Alignment.center,decoration: BoxDecoration(image: DecorationImage(image: FileImage(controller.imageDoc),fit: BoxFit.cover),),)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Container(child: Text(
                              "O medicamento é de uso contínuo?",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: ColorsApp.KBlackColor,
                                  fontFamily: "Montserrat SemiBold"),
                            ),
                            ),
                            SizedBox(
                              height: 20,
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
                                      Container(
                                        width: 55,
                                        height: 35,
                                        child: Switch(
                                          value: controller.hasmedicineContinuing,
                                          onChanged: (value){
                                            controller.changeHasMedicineContinuing(value);
                                            setState(() {});
                                          },
                                          activeColor: ColorsApp.KSecondaryColor,
                                          activeTrackColor: ColorsApp.KPrimaryColor,
                                          inactiveTrackColor: ColorsApp.KSecondaryColor,
                                          inactiveThumbColor: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        child: Text(controller.hasmedicineContinuing?"Sim":"Não",
                                          style: TextStyle(color: ColorsApp.KPrimaryColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 14,
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/Icon ionic-ios-arrow-forward_white@3x.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible: controller.hasmedicineContinuing,
                              child: MedicineContinuingWidget(
                                changeDateEnd: controller.changeDateEnd,
                                changeDateStart: controller.changeDateStart,
                                changePills: controller.changeNumberPills,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 45,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.black),
                                  shape: MaterialStateProperty.all(StadiumBorder()),
                              ),
                              onPressed: () async {

                                if(MedicineViewModel().validateFields(c, controller)) {
                                  controller.changeLoading(true);
                                  await controller.saveMedicine();
                                  controller.changeLoading(false);
                                  Navigator.pop(c, true);
                                }
                              },
                              child: Text("SALVAR",style: TextStyle(color:Colors.white,fontFamily: "Montserrat SemiBold",fontSize: 13)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
