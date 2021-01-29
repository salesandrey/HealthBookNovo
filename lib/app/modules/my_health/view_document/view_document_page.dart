import 'package:HealthBook/app/models/document_model.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'view_document_controller.dart';

class ViewDocumentPage extends StatefulWidget {

  final DocumentModel document;

  const ViewDocumentPage({Key key, this.document}) : super(key: key);

  @override
  _ViewDocumentPageState createState() => _ViewDocumentPageState(document: document);
}

class _ViewDocumentPageState extends ModularState<ViewDocumentPage, ViewDocumentController> {


  final DocumentModel document;

  Future<void> loadingFile() async{
    setState(() {});
  }


  _ViewDocumentPageState({@required this.document});

  @override
  void initState() {
    loadingFile();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
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
          "Visualizar Documento",
          style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 964,
            maxHeight: MediaQuery.of(context).size.height >= 964? MediaQuery.of(context).size.height : 964
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Text(document.title,style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: "Montserrat SemiBold")),
                SizedBox(height: 8,),
                Text(TimeConvert().convertTimeToStringBrazilFormat(document.createdOn),
                  style: TextStyle(
                      fontFamily: "Montserrat Bold",
                      fontSize: 12,
                      color:Color(0xFF999999))),
                SizedBox(height: 16,),
                RichText(
                    text: TextSpan(
                        children:[
                          TextSpan(
                              text: "Tipo: ",style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 12,
                              color:Color(0xFF999999))),
                      TextSpan(text: document.category,
                          style: TextStyle(
                              fontFamily: "Montserrat Medium",
                              fontSize: 12,
                              color:Color(0xFF999999)))
                    ])),
                SizedBox(height: 13,),
                RichText(
                    text: TextSpan(
                        children:[
                          TextSpan(
                              text: "Observações: ",style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 12,
                              color:Color(0xFF999999))),
                          TextSpan(text: document.obs,
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  fontSize: 12,
                                  color:Color(0xFF999999)))
                        ])),
                Expanded(child: Container())



              ],
            ),
          ),
        ),
      ),
    );
  }
}
