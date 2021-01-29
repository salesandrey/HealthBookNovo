import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'view_medicine_controller.dart';
import 'package:HealthBook/app/models/patient_medicine_model.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:dotted_border/dotted_border.dart';

class ViewMedicinePage extends StatefulWidget {

  final PatientMedicineModel medicine;

  const ViewMedicinePage({Key key, this.medicine}) : super(key: key);

  @override
  _ViewMedicinePageState createState() => _ViewMedicinePageState(medicine: medicine);
}

class _ViewMedicinePageState extends ModularState<ViewMedicinePage, ViewMedicineController> {


  final PatientMedicineModel medicine;

  _ViewMedicinePageState({@required this.medicine});

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    print(medicine.initDate);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: ColorsApp.KPrimaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, false);
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
              maxHeight: MediaQuery
                  .of(context)
                  .size
                  .height >= 964 ? MediaQuery
                  .of(context)
                  .size
                  .height : 964
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Text(medicine.name, style: TextStyle(color: Colors.black,
                    fontSize: 14,
                    fontFamily: "Montserrat SemiBold")),
                SizedBox(height: 8,),
                Text(TimeConvert().convertTimeToStringBrazilFormat(
                    medicine.createdOn),
                    style: TextStyle(
                        fontFamily: "Montserrat Bold",
                        fontSize: 12,
                        color: Color(0xFF999999))),
                SizedBox(height: 16,),
                RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Dosagem: ", style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 12,
                              color: Color(0xFF999999))),
                          TextSpan(text: medicine.dosage,
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  fontSize: 12,
                                  color: Color(0xFF999999)))
                        ])),
                SizedBox(height: 13,),
                RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Uso contínuo: ", style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 12,
                              color: Color(0xFF999999))),
                          TextSpan(text:medicine.continuo=="0"? "Não" : "Sim",
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  fontSize: 12,
                                  color: Color(0xFF999999)))
                        ])),
                SizedBox(height: 13,),
                RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Data de início do tratamento: ", style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 12,
                              color: Color(0xFF999999))),
                          TextSpan(text:TimeConvert().convertTimeToStringBrazilFormat(medicine.initDate)!="30/11/0001"?TimeConvert().convertTimeToStringBrazilFormat(medicine.initDate):"",
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  fontSize: 12,
                                  color: Color(0xFF999999)))
                        ])),
                SizedBox(height: 13,),
                RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Data de fim do tratamento: ", style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 12,
                              color: Color(0xFF999999))),
                          TextSpan(text:TimeConvert().convertTimeToStringBrazilFormat(medicine.endDate)!="30/11/0001"? TimeConvert().convertTimeToStringBrazilFormat(medicine.endDate):"",
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  fontSize: 12,
                                  color: Color(0xFF999999)))
                        ])),
                SizedBox(height: 13,),
                RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Comprimidos por dia: ", style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 12,
                              color: Color(0xFF999999))),
                          TextSpan(text: medicine.qtd!=""?medicine.qtd=="1"?"${medicine.qtd} comprimido":"${medicine.qtd} comprimidos":"nenhum",
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  fontSize: 12,
                                  color: Color(0xFF999999)))
                        ])),
                SizedBox(height: 27),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(8),
                  color: ColorsApp.KTertiaryColor,
                  dashPattern: [8, 8, 8, 8],
                  child:Container(
                     height: 546,
                    child: Image(image: NetworkImage('https://health.lanconi.com.br/uploads/${medicine.filename}'),fit: BoxFit.contain,),
                ),
            ),
                Expanded(child: Container())


              ],
            ),
          ),
        ),
      ),
    );
  }
}
