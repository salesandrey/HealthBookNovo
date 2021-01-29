import 'package:HealthBook/app/style/theme.dart';
import 'package:brasil_fields/formatter/cpf_input_formatter.dart';
import 'package:brasil_fields/formatter/data_input_formatter.dart';
import 'package:brasil_fields/formatter/telefone_input_formatter.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'register_info_controller.dart';
import 'viewmodel/register_info_validator_viewmodel.dart';

class RegisterInfoPage extends StatefulWidget {

  @override
  _RegisterInfoPageState createState() => _RegisterInfoPageState();
}

class _RegisterInfoPageState extends ModularState<RegisterInfoPage, RegisterInfoController> {


  TextEditingController nameController = TextEditingController();
  TextEditingController cpfController = TextEditingController();

  List<DropdownMenuItem<String>> sexItem = [
    DropdownMenuItem(child: Text("M"), value: "M",),
    DropdownMenuItem(child: Text("F"), value: "F",)
  ];

  List<DropdownMenuItem<String>> uFItem = [
    DropdownMenuItem(child: Text("AC"), value: "AC",),
    DropdownMenuItem(child: Text("AL"), value: "AL",),
    DropdownMenuItem(child: Text("AP"), value: "AP",),
    DropdownMenuItem(child: Text("AM"), value: "AM",),
    DropdownMenuItem(child: Text("BA"), value: "BA",),
    DropdownMenuItem(child: Text("CE"), value: "CE",),
    DropdownMenuItem(child: Text("DF"), value: "DF",),
    DropdownMenuItem(child: Text("ES"), value: "ES",),
    DropdownMenuItem(child: Text("GO"), value: "GO",),
    DropdownMenuItem(child: Text("MA"), value: "MA",),
    DropdownMenuItem(child: Text("MT"), value: "MT",),
    DropdownMenuItem(child: Text("MS"), value: "MS",),
    DropdownMenuItem(child: Text("MG"), value: "MG",),
    DropdownMenuItem(child: Text("PA"), value: "PA",),
    DropdownMenuItem(child: Text("PB"), value: "PB",),
    DropdownMenuItem(child: Text("PR"), value: "PR",),
    DropdownMenuItem(child: Text("PE"), value: "PE",),
    DropdownMenuItem(child: Text("PI"), value: "PI",),
    DropdownMenuItem(child: Text("RR"), value: "RR",),
    DropdownMenuItem(child: Text("RO"), value: "RO",),
    DropdownMenuItem(child: Text("RJ"), value: "RJ",),
    DropdownMenuItem(child: Text("RN"), value: "RN",),
    DropdownMenuItem(child: Text("RS"), value: "RS",),
    DropdownMenuItem(child: Text("SC"), value: "SC",),
    DropdownMenuItem(child: Text("SP"), value: "SP",),
    DropdownMenuItem(child: Text("SE"), value: "SE",),
    DropdownMenuItem(child: Text("TO"), value: "TO",),
  ];


  @override
  void initState() {
    nameController.text = controller.currentUser.name;
    cpfController.text = controller.currentUser.cpf;
    controller.changeCPF(controller.currentUser.cpf);
    controller.changeName(controller.currentUser.name);
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    cpfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder:(c) => Observer(builder: (_) {
        return Scaffold(
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
              "Cadastro Geral",
              style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 260,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            await controller.useFromGallery("photoUser");
                          },
                          child: Stack(alignment: Alignment.bottomCenter,
                            children: [
                              Container(width: 225, height: 196),
                              DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(8),
                                  color: ColorsApp.KTertiaryColor,
                                  dashPattern: [8, 8, 8, 8],
                                  child: controller.image == null ? Container(
                                    width: 188,
                                    height: 176,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 52,
                                          child: Image(image: AssetImage(
                                              'assets/images/Grupo 3811@3x.png')),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 25),
                                          child: Text(
                                            "envie uma imagem\npara o seu perfil",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                height: 2,
                                                fontSize: 14,
                                                color: Color(0xffA4A4A4)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ) : Container(
                                      width: 188,
                                      height: 176,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: FileImage(controller.image),
                                              fit: BoxFit.cover)))
                              ),
                              Positioned(left: 0, top: 0,
                                child: MaterialButton(
                                  minWidth: 70,
                                  onPressed: () async {
                                    await controller.takePicture("photoUser");
                                  },
                                  color: Color(0xFF707070),
                                  textColor: Colors.white,
                                  child: Icon(
                                    Icons.camera_alt,
                                    size: 25,
                                  ),
                                  padding: EdgeInsets.all(20),
                                  shape: CircleBorder(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: nameController,
                      onChanged: controller.changeName,
                      decoration: new InputDecoration(
                          prefixIcon: Container(
                            width: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 18,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/round-person-24px@3x.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorsApp.KSecondaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(),
                          hintText: 'Nome completo',
                          hintStyle: TextStyle(
                              height: 1.6, fontSize: 12, color: ColorsApp
                              .KTertiaryColor),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: TextField(
                      controller: cpfController,
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CpfInputFormatter(),
                      ],
                      onChanged: controller.changeCPF,
                      decoration: new InputDecoration(
                          prefixIcon: Container(
                            width: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 18,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/Icon awesome-id-card@3x.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorsApp.KSecondaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(),
                          hintText: 'CPF',
                          hintStyle: TextStyle(
                              height: 1.6, fontSize: 12, color: ColorsApp
                              .KTertiaryColor),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10)),
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
                            keyboardType: TextInputType.text,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              DataInputFormatter(),
                            ],
                            onChanged: controller.changeDateBirthday,
                            decoration: new InputDecoration(
                                prefixIcon: Container(
                                  width: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 20,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/Icon material-date-range@3x.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorsApp.KSecondaryColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                border: OutlineInputBorder(),
                                hintText: 'Data de nascimento',
                                hintStyle: TextStyle(height: 1.6,
                                    fontSize: 12,
                                    color: ColorsApp.KTertiaryColor),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorsApp.KSecondaryColor),
                                    borderRadius: BorderRadius.circular(8)),
                                border: OutlineInputBorder(),
                                hintText: 'Sexo',
                                hintStyle: TextStyle(height: 1.6,
                                    fontSize: 12,
                                    color: ColorsApp.KTertiaryColor),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10),
                                prefixIcon: Container(
                                  width: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 13,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/genders@3x.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            elevation: 16,
                            style: TextStyle(color: Colors.black),
                            onChanged: controller.changeSex,
                            items: sexItem,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              TelefoneInputFormatter(),
                              LengthLimitingTextInputFormatter(15),
                            ],
                            onChanged: controller.changeCellphone,
                            decoration: new InputDecoration(
                                prefixIcon: Container(
                                  width: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 13,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/Icon material-settings-cell@3x.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorsApp.KSecondaryColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                border: OutlineInputBorder(),
                                hintText: 'Celular',
                                hintStyle: TextStyle(height: 1.6,
                                    fontSize: 12,
                                    color: ColorsApp.KTertiaryColor),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: TextField(
                            onChanged: controller.changePhone,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              TelefoneInputFormatter(),
                              LengthLimitingTextInputFormatter(14),
                            ],
                            decoration: new InputDecoration(
                                prefixIcon: Container(
                                  width: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 14,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/Icon awesome-phone-alt@3x.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorsApp.KSecondaryColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                border: OutlineInputBorder(),
                                hintText: 'Residencial',
                                hintStyle: TextStyle(height: 1.6,
                                    fontSize: 12,
                                    color: ColorsApp.KTertiaryColor),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      onChanged: controller.changeAddress,
                      decoration: new InputDecoration(
                          prefixIcon: Container(
                            width: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 12,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/Icon material-location-on@3x.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorsApp.KSecondaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(),
                          hintText: 'Endereço',
                          hintStyle: TextStyle(
                              height: 1.6, fontSize: 12, color: ColorsApp
                              .KTertiaryColor),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      onChanged: controller.changeNeigh,
                      decoration: new InputDecoration(
                          prefixIcon: Container(
                            width: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 18,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/street-map@3x.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorsApp.KSecondaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(),
                          hintText: 'Bairro',
                          hintStyle: TextStyle(
                              height: 1.6, fontSize: 12, color: ColorsApp
                              .KTertiaryColor),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10)),
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
                            onChanged: controller.changeCity,
                            keyboardType: TextInputType.text,
                            decoration: new InputDecoration(
                                prefixIcon: Container(
                                  width: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 18,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/Icon metro-location-city@3x.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorsApp.KSecondaryColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                border: OutlineInputBorder(),
                                hintText: 'Cidade',
                                hintStyle: TextStyle(height: 1.6,
                                    fontSize: 12,
                                    color: ColorsApp.KTertiaryColor),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorsApp.KSecondaryColor),
                                  borderRadius: BorderRadius.circular(8)),
                              border: OutlineInputBorder(),
                              hintText: 'UF',
                              hintStyle: TextStyle(height: 1.6,
                                  fontSize: 12,
                                  color: ColorsApp.KTertiaryColor),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10),
                              prefixIcon: Container(
                                width: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 13,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/brazil@3x.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),),
                            elevation: 16,
                            style: TextStyle(color: Colors.black),
                            onChanged: controller.changeUF,
                            items: uFItem,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: TextField(
                            onChanged: controller.changeNumberHouse,
                            keyboardType: TextInputType.text,
                            decoration: new InputDecoration(
                                prefixIcon: Container(
                                  width: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 18,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/Icon awesome-home@3x.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorsApp.KSecondaryColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                border: OutlineInputBorder(),
                                hintText: 'Nº',
                                hintStyle: TextStyle(height: 1.6,
                                    fontSize: 12,
                                    color: ColorsApp.KTertiaryColor),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10)),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 7,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: TextField(
                            onChanged: controller.changeComplement,
                            keyboardType: TextInputType.text,
                            decoration: new InputDecoration(
                                prefixIcon: Container(
                                  width: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 12,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/Icon material-location-on@3x.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorsApp.KSecondaryColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                border: OutlineInputBorder(),
                                hintText: 'Complemento',
                                hintStyle: TextStyle(height: 1.6,
                                    fontSize: 12,
                                    color: ColorsApp.KTertiaryColor),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text("*NÃO OBRIGATÓRIO", style: TextStyle(
                      color: Color(0xFF00D1FB),
                      fontFamily: "Montserrat Regular"),),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: RichText(text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Montserrat Regular"),
                        children: [
                          TextSpan(text: "Enviar Documento",
                              style: TextStyle(fontFamily: "Montserrat Bold")),
                          TextSpan(
                              text: " (Foto frente e verso, do RG ou da CNH)")
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 42.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Stack(
                              alignment: Alignment.bottomCenter, children: [
                            Container(width: 180, height: 200),
                            InkWell(
                              onTap: () async {
                                await controller.useFromGallery("docFront");
                                setState(() {});
                              },
                              child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(8),
                                  color: ColorsApp.KTertiaryColor,
                                  dashPattern: [8, 8, 8, 8],
                                  child: controller.docFront == null ? Container(
                                      width: 150,
                                      height: 180,
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Container(
                                              height: 52,
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/Grupo 3811@3x.png'),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 25),
                                              child: Text(
                                                "FRENTE",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: "Montserrat Regular",
                                                    height: 2,
                                                    fontSize: 14,
                                                    color: Color(0xffA4A4A4)),
                                              ),
                                            ),
                                          ])) : Container(
                                    width: 150,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: FileImage(controller.docFront),
                                            fit: BoxFit.cover)),)
                              ),
                            ),
                            Positioned(left: 0, top: 0,
                              child: MaterialButton(
                                minWidth: 70,
                                onPressed: () async {
                                  await controller.takePicture("docFront");
                                  setState(() {});
                                },
                                color: Color(0xFF707070),
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 25,
                                ),
                                padding: EdgeInsets.all(20),
                                shape: CircleBorder(),
                              ),
                            )
                          ]),
                        ),
                        Flexible(child: Stack(
                            alignment: Alignment.bottomCenter, children: [
                          Container(width: 180, height: 200),
                          InkWell(
                            onTap: () async {
                              await controller.useFromGallery("docBack");
                              setState(() {});
                            },
                            child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(8),
                                color: ColorsApp.KTertiaryColor,
                                dashPattern: [8, 8, 8, 8],
                                child: controller.docBack == null ?
                                Container(width: 150, height: 180,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 52,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/Grupo 3811@3x.png'),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 25),
                                        child: Text(
                                          "VERSO",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "Montserrat Regular",
                                              height: 2,
                                              fontSize: 14,
                                              color: Color(0xffA4A4A4)),
                                        ),
                                      ),
                                    ],),) : Container(
                                  width: 150,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: FileImage(controller.docBack),
                                          fit: BoxFit.cover)),)),
                          ),
                          Positioned(left: 0, top: 0,
                            child: MaterialButton(
                              minWidth: 70,
                              onPressed: () async {
                                await controller.takePicture("docBack");
                                setState(() {});
                              },
                              color: Color(0xFF707070),
                              textColor: Colors.white,
                              child: Icon(
                                Icons.camera_alt,
                                size: 25,
                              ),
                              padding: EdgeInsets.all(20),
                              shape: CircleBorder(),
                            ),
                          )
                        ])
                        )
                      ],),
                  ),
                  SizedBox(height: 25,),
                  Text(
                    "Para tornar a sua experiência mais completa com o Health Book",
                    style: TextStyle(color: Color(0xFF707070),
                        fontFamily: "Montserrat Regular",
                        fontSize: 14),),
                  SizedBox(height: 46,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Builder(
                          builder:(c) => Container(
                            width: 150,
                            height: 43,
                            child: TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.black),
                                  visualDensity: VisualDensity.adaptivePlatformDensity,
                                  shape: MaterialStateProperty.all(StadiumBorder())),

                              onPressed: () {
                                if(RegisterInfoValidatorViewModel().validatorFields(controller, c)) {
                                  Modular.to.pushNamed("/RegisterData/RegisterHealth");
                                }
                              },
                              child: Text("SALVAR", style: TextStyle(
                                  fontFamily: "Montserrat SemiBold",
                                  color: Colors.white,
                                  fontSize: 13)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
