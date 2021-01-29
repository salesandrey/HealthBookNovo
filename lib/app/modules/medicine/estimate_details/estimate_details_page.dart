import 'package:HealthBook/app/modules/medicine/estimate_details/componentes/card_estimate_details_widget.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'estimate_details_controller.dart';

class EstimateDetailsPage extends StatefulWidget {

  final String estimateID;
  final String typeEstimative;

  const EstimateDetailsPage({Key key, this.estimateID, this.typeEstimative}) : super(key: key);

  @override
  _EstimateDetailsPageState createState() => _EstimateDetailsPageState(estimateID: estimateID,typeEstimative: typeEstimative);
}

class _EstimateDetailsPageState extends ModularState<EstimateDetailsPage, EstimateDetailsController> {

  final String estimateID;
  final String typeEstimative;

  _EstimateDetailsPageState({this.estimateID,this.typeEstimative});

  @override
  void initState() {
    controller.changeEstimateID(estimateID);
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
            "Visualizar Orçamento",
            style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.pharmaciesEstimates==null?0:controller.pharmaciesEstimates.length,
                  itemBuilder: (context,index){
                    return CardEstimateDetailsWidget(
                      navigation: (){
                        Navigator.of(context).pushNamed("/ViewBudget",arguments: controller.pharmaciesEstimates[index]);
                      },
                      colorCard: index % 2 ==0 ? Color(0xFFFAFAFA) : Color(0xFFFFFFFF),
                      estimatePharmacy: controller.pharmaciesEstimates[index],
                    );
                  }),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                  child: Text("STATUS: $typeEstimative",style: TextStyle(color: typeEstimative=="FINALIZADO"?Color(0xFF4DAA57):Color(0xFF00D1FB),fontFamily: "Montserrat SemiBold"))),
              Center(
                child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.5,
                    height: 45,
                    shape: StadiumBorder(side:BorderSide(color: Colors.black,width: 1)),
                    elevation: 0,
                    color: Colors.white,
                    child: Text("CANCELAR ORÇAMENTO",style: TextStyle(fontSize: 13,color: Colors.black,fontFamily: "Montserrat SemiBold"),),
                    onPressed: (){
                      Navigator.pop(context,true);
                    }),
              ),
              SizedBox(height: 91)

            ],
          ),
        ),
      );
    });
  }
}
