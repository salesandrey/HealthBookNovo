import 'package:HealthBook/app/modules/my_health/register_document/componentes/type_document_widget.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:brasil_fields/formatter/data_input_formatter.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'edit_document_controller.dart';
import 'package:HealthBook/app/models/document_model.dart';

class EditDocumentPage extends StatefulWidget {

  final DocumentModel document;

  const EditDocumentPage({Key key, this.document}) : super(key: key);

  @override
  _EditDocumentPageState createState() => _EditDocumentPageState(document: document);
}

class _EditDocumentPageState extends ModularState<EditDocumentPage, EditDocumentController> {

  final DocumentModel document;

  _EditDocumentPageState({@required this.document});

  @override
  void initState() {
    controller.changeNameDocument(document.title);
    controller.changeCurrentType(document.category);
    controller.changeObservations(document.obs);
    controller.changeDateDocument(TimeConvert().convertTimeToStringBrazilFormat(document.createdOn));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
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
              "Atualizar Documento",
              style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Nome do Documento", style: TextStyle(
                      fontFamily: "Montserrat SemiBold",
                      fontSize: 14,
                      color: Colors.black)),
                  SizedBox(height: 30),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: TextField(
                      controller: TextEditingController(text: controller.nameDocument),
                      keyboardType: TextInputType.text,
                      onChanged: controller.changeNameDocument,
                      decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.description_outlined),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorsApp.KSecondaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10)),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text("Tipo de Documento", style: TextStyle(
                      fontFamily: "Montserrat SemiBold",
                      fontSize: 14,
                      color: Colors.black)),
                  SizedBox(height: 30),
                  TypeDocumentWidget(currentSelection: controller.currentType,
                      changeType: controller.changeCurrentType),
                  SizedBox(height: 50),
                  Text("Data do documento", style: TextStyle(
                      fontFamily: "Montserrat SemiBold",
                      fontSize: 14,
                      color: Colors.black)),
                  SizedBox(height: 30),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: TextField(
                      controller: TextEditingController(text: controller.dateDocument),
                      keyboardType: TextInputType.number,
                      onChanged: controller.changeDateDocument,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        DataInputFormatter(),
                      ],
                      decoration: new InputDecoration(
                          hintText: "dd/mm/aaaa",
                          hintStyle: TextStyle(fontSize: 13,
                              fontFamily: "Montserrat Regular",
                              color: Colors.grey),
                          prefixIcon: Transform.scale(
                              scale: 0.6, child: ImageIcon(
                              AssetImage("assets/images/icons/calendar.png"))),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorsApp.KSecondaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10)),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text("Observações", style: TextStyle(
                      fontFamily: "Montserrat SemiBold",
                      fontSize: 14,
                      color: Colors.black)),
                  SizedBox(height: 30),
                  TextField(
                    keyboardType: TextInputType.text,
                    controller: TextEditingController(text: controller.observations),
                    onChanged: controller.changeObservations,
                    textAlignVertical: TextAlignVertical.center,
                    maxLines: 6,
                    decoration: new InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorsApp
                              .KSecondaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        border: OutlineInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10)),
                  ),
                  SizedBox(height: 50),
                  Text("Enviar documento", style: TextStyle(
                      fontFamily: "Montserrat SemiBold",
                      fontSize: 14,
                      color: Colors.black)),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () async {
                      controller.getDocument();
                    },
                    child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(8),
                        color: ColorsApp.KTertiaryColor,
                        dashPattern: [8, 8, 8, 8],
                        child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            height: 176,
                            child: Center(
                              child: Container(
                                  height: 52,
                                  child: Image(color: null,
                                      image: AssetImage(
                                          'assets/images/Grupo 3811@3x.png'))),
                            ))),
                  ),
                  SizedBox(height: 45),
                  Center(
                    child: Container(
                      width: 150,
                      height: 43,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.black), shape: MaterialStateProperty.all(
                            StadiumBorder())),
                        child: Text("SALVAR", style: TextStyle(
                            color: Colors.white)),
                      ),
                    ),
                  ),
                  SizedBox(height: 130),
                ],
              ),
            ),
          ));
    });
  }
}
  