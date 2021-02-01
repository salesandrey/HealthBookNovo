import 'package:HealthBook/app/modules/register_family/viewmodels/family_register_validate_viewmodel.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:brasil_fields/formatter/cpf_input_formatter.dart';
import 'package:brasil_fields/formatter/data_input_formatter.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'register_family_controller.dart';

class RegisterFamilyPage extends StatefulWidget {

  @override
  _RegisterFamilyPageState createState() => _RegisterFamilyPageState();
}

class _RegisterFamilyPageState
    extends ModularState<RegisterFamilyPage, RegisterFamilyController> {

  List<DropdownMenuItem<String>> sexItem = [
    DropdownMenuItem(child: Text("M"),value: "M",),
    DropdownMenuItem(child: Text("F"),value: "F",)
  ];

  List<DropdownMenuItem<String>> kinShipItem = [
    DropdownMenuItem(child: Text("Filho(a)"),value: "Filho(a)",),
    DropdownMenuItem(child: Text("Enteado(a)"),value: "Enteado(a)",),
    DropdownMenuItem(child: Text("Maior incapaz"),value: "Maior incapaz",)
  ];

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
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
              ),
              title: Text(
                "Cadastro de familiares",
                style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: TextField(
                        onChanged: controller.changeName,
                        keyboardType: TextInputType.text,
                        decoration: new InputDecoration(
                            prefixIcon:  Container(
                              width: 50,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 18,
                                    child: Image(
                                      image: AssetImage('assets/images/round-person-24px@3x.png'),
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
                            errorText: controller.nameValidator?controller.nameFeedback:null,
                            hintText: 'Nome completo',
                            hintStyle: TextStyle(
                                height: 1.6, fontSize: 12, color: ColorsApp.KTertiaryColor),
                            contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: TextField(
                        onChanged: controller.changeCPF,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(14),
                          CpfInputFormatter()],
                        decoration: new InputDecoration(
                            prefixIcon: Container(
                              width: 50,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 18,
                                    child: Image(
                                      image: AssetImage('assets/images/Icon awesome-id-card@3x.png'),
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
                            errorText: controller.cpfValidator? controller.cpfFeedback:null,
                            hintText: 'CPF',
                            hintStyle: TextStyle(height: 1.6,fontSize: 12,color: ColorsApp.KTertiaryColor),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            child: TextField(
                              onChanged: controller.changeDateBirthday,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                DataInputFormatter(),
                              ],
                              keyboardType: TextInputType.text,
                              decoration: new InputDecoration(
                                  prefixIcon:  Container(
                                    width: 50,
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 18,
                                          child: Image(
                                            image: AssetImage('assets/images/Icon material-date-range@3x.png'),
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
                                  errorText: controller.dateBirthDayValidator?controller.dateBirthDayFeedback:null,
                                  hintText: 'Data de nascimento',
                                  hintStyle: TextStyle(height: 1.6,fontSize: 12,color: ColorsApp.KTertiaryColor),
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            child: DropdownButtonFormField<String>(

                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
                                      borderRadius: BorderRadius.circular(8)),
                                  border: OutlineInputBorder(),
                                  errorText: controller.sexValidator? "":null,
                                  hintText: 'Sexo',
                                  hintStyle: TextStyle(height: 1.6,fontSize: 12,color: ColorsApp.KTertiaryColor),
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                                  prefixIcon: Container(
                                    width: 50,
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 13,
                                          child: Image(
                                            image: AssetImage('assets/images/genders@3x.png'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              elevation: 16,
                              style: TextStyle(color: Colors.black),
                              onChanged: controller.changeSex,
                              items: sexItem,
                            )))]),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: DropdownButtonFormField<String>(

                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
                                borderRadius: BorderRadius.circular(8)),
                            border: OutlineInputBorder(),
                            errorText: controller.kinshipValidator? "":null,
                            hintText: 'Parentesco',
                            hintStyle: TextStyle(height: 1.6,fontSize: 12,color: ColorsApp.KTertiaryColor),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                            prefixIcon: Container(
                              width: 50,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 13,
                                    child: Icon(Icons.people,color: ColorsApp.KTertiaryColor,size: 22,),
                                    )]))),
                        elevation: 16,
                        style: TextStyle(color: Colors.black),
                        onChanged: controller.changeKinship,
                        items: kinShipItem,
                      )
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Convidar mais algum representante legal?",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: ColorsApp.KBlackColor,
                                  fontWeight: FontWeight.w700),

                            ),
                          ),
                          Container(
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Switch(
                                          value: controller.hasLegalRepresentative,
                                          onChanged: (bool value){controller.changeHasLegalRepresentative(value);},
                                          activeColor: ColorsApp.KBlackColor,
                                          activeTrackColor: ColorsApp.KSecondaryColor,
                                          inactiveTrackColor: ColorsApp.KSecondaryColor,
                                          inactiveThumbColor: Colors.grey,
                                        ),
                                        Text("Não",style: TextStyle(
                                          color: ColorsApp.KBlackColor,
                                        ),),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Visibility(
                                          visible: controller.hasLegalRepresentative,
                                          child: Email(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top:30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                InkWell(
                                  onTap:()async{
                                    controller.takePhoto();
                                    setState(() {});
                                  },
                                  child: DottedBorder(
                                    borderType: BorderType.RRect,
                                    radius: Radius.circular(8),
                                    color: ColorsApp.KTertiaryColor,
                                    dashPattern: [8, 8, 8, 8],
                                    child: controller.documentImage==null?Container(
                                      alignment: Alignment.center,
                                      height: 176,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height:52,
                                            child: Image(color: controller.documentImageValidator?Colors.red:null,
                                              image: AssetImage('assets/images/Grupo 3811@3x.png'),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(top: 20),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "enviar documento ",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        height: 2,
                                                        fontSize: 14,
                                                        color:controller.documentImageValidator?Colors.red:Color(0xffA4A4A4),
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                    Text(
                                                      "(RG, certidão de",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          height: 2,
                                                          fontSize: 14,
                                                          color: controller.documentImageValidator?Colors.red:Color(0xffA4A4A4)),
                                                    ),
                                                  ],
                                                ),
                                                Text("nascimento ou sentença judicial)",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      height: 2,
                                                      fontSize: 14,
                                                      color:controller.documentImageValidator?Colors.red:Color(0xffA4A4A4)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ):Container(
                                      height: 176,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: FileImage(controller.documentImage),
                                              fit: BoxFit.cover)),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 45,
                            child: RaisedButton(
                              shape: StadiumBorder(),
                              visualDensity: VisualDensity.adaptivePlatformDensity,
                              onPressed: () async {
                                FamilyRegisterValidateViewModel().formValidate(controller);
                                setState(() {});
                                if(!controller.nameValidator && !controller.sexValidator &&
                                    !controller.documentImageValidator && !controller.kinshipValidator &&
                                !controller.dateBirthDayValidator && !controller.cpfValidator &&
                                !controller.emailLegalRepresentativeValidate)
                                {
                                  print("rodou");
                                  controller.changeLoading(true);
                                  await controller.saveFamilyData();
                                  controller.changeLoading(false);
                                  setState(() {});
                                  Modular.to.pushReplacementNamed("/ListDependent");
                                }
                              },
                              color: Colors.black,
                              textColor: Colors.white,
                              child: Text("SALVAR"),
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
        );
      });
  }
}

class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        height: 43,
        alignment: Alignment.center,
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: new InputDecoration(
              prefixIcon:  Container(
                width: 50,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 18,
                      child: Image(
                        image: AssetImage('assets/images/icon_email.png'),
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
              hintText: 'Email',
              hintStyle: TextStyle(
                  height: 1.6, fontSize: 12, color: ColorsApp.KTertiaryColor),
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 10)),
        ),
      ),
    );
  }
}
