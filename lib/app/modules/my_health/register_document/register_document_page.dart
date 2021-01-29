import 'package:HealthBook/app/modules/my_health/register_document/componentes/type_document_widget.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:brasil_fields/formatter/data_input_formatter.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'register_document_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'viewmodel/register_document_viewmodel.dart';

class RegisterDocumentPage extends StatefulWidget {

  final String id;

  const RegisterDocumentPage({Key key, this.id}) : super(key: key);

  @override
  _RegisterDocumentPageState createState() => _RegisterDocumentPageState(id: id);
}

class _RegisterDocumentPageState extends ModularState<RegisterDocumentPage, RegisterDocumentController> {

  final String id;

  _RegisterDocumentPageState({this.id});

  @override
  void initState() {
    controller.changeIdUser(id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return ModalProgressHUD(inAsyncCall: controller.loading,
        child: Scaffold(
            appBar:  AppBar(
              elevation: 2,
              backgroundColor: ColorsApp.KPrimaryColor,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
              ),
              title: Text(
                "Cadastro de Documentos",
                style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
              ),
              centerTitle: true,
            ),
            body: Builder(
              builder:(c) => ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: 964,
                      maxHeight: MediaQuery.of(context).size.height >= 964? MediaQuery.of(context).size.height : 964
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Nome do Documento",style: TextStyle(fontFamily: "Montserrat SemiBold",fontSize: 14,color: Colors.black)),
                          SizedBox(height: 30),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            child: TextField(
                              keyboardType: TextInputType.text,
                              onChanged: controller.changeName,
                              decoration: new InputDecoration(
                                  prefixIcon:  Icon(Icons.description_outlined),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  border: OutlineInputBorder(),
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                            ),
                          ),
                          SizedBox(height: 50),
                          Text("Tipo de Documento",style: TextStyle(fontFamily: "Montserrat SemiBold",fontSize: 14,color: Colors.black)),
                          SizedBox(height: 30),
                          TypeDocumentWidget(currentSelection: controller.type,changeType: controller.changeType,),
                          SizedBox(height: 50),
                          Text("Data do documento",style: TextStyle(fontFamily: "Montserrat SemiBold",fontSize: 14,color: Colors.black)),
                          SizedBox(height: 30),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              onChanged: controller.changeDateDocument,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                DataInputFormatter(),
                              ],
                              decoration: new InputDecoration(
                                  hintText: "dd/mm/aaaa",
                                  hintStyle: TextStyle(fontSize: 13,fontFamily: "Montserrat Regular",color: Colors.grey),
                                  prefixIcon:  Transform.scale(scale: 0.6,child: ImageIcon(AssetImage("assets/images/icons/calendar.png"))),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  border: OutlineInputBorder(),
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                            ),
                          ),
                          SizedBox(height: 50),
                          Text("Observações",style: TextStyle(fontFamily: "Montserrat SemiBold",fontSize: 14,color: Colors.black)),
                          SizedBox(height: 30),
                          TextField(
                            keyboardType: TextInputType.text,
                            onChanged: controller.changeObservations,
                            textAlignVertical: TextAlignVertical.center,
                            maxLines: 6,
                            decoration: new InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                border: OutlineInputBorder(),
                                contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10)),
                          ),
                          SizedBox(height: 50),
                          Text("Enviar documento",style: TextStyle(fontFamily: "Montserrat SemiBold",fontSize: 14,color: Colors.black)),
                          SizedBox(height: 30),
                          InkWell(
                            onTap: ()async{
                              await controller.pickFile();
                            },
                            child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(8),
                                color: ColorsApp.KTertiaryColor,
                                dashPattern: [8, 8, 8, 8],
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 176,
                                    child: Center(
                                      child: Container(
                                          height: 52,
                                          child: Image(color:null,
                                              image: AssetImage('assets/images/Grupo 3811@3x.png'))),
                                    )))
                          ),
                          SizedBox(height: 45),
                          Center(
                            child: Container(
                              width: 150,
                              height: 43,
                              child: ElevatedButton(
                                onPressed: () async{
                                  if(RegisterDocumentViewModel().validateFields(c, controller)) {
                                    controller.changeLoading(true);
                                    await controller.saveData();
                                    controller.changeLoading(false);
                                    Navigator.pop(c, true);
                                  }
                                },
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black),shape: MaterialStateProperty.all(StadiumBorder())),
                                child: Text("SALVAR",style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ),
                          SizedBox(height: 130),
                        ],
                    ),
                      ),
                ),
                  ),
            ),
            ),
      );
    });


  }
}
