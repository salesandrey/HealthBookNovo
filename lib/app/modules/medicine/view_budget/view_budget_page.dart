import 'package:HealthBook/app/models/pharmacy_estimate_list_model.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'view_budget_controller.dart';

class ViewBudgetPage extends StatefulWidget {

  final PharmacyEstimateListModel pharmacyEstimate;

  const ViewBudgetPage({Key key, this.pharmacyEstimate}) : super(key: key);

  @override
  _ViewBudgetPageState createState() => _ViewBudgetPageState(pharmacyEstimate: pharmacyEstimate);
}

class _ViewBudgetPageState extends ModularState<ViewBudgetPage, ViewBudgetController> {


  final PharmacyEstimateListModel pharmacyEstimate;

  _ViewBudgetPageState({this.pharmacyEstimate});

  @override
  void initState() {
    controller.changePharmacyEstimate(pharmacyEstimate);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Observer(builder: (context) {
      return Scaffold(
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
            "Visualizar Orçamento",
            style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: (){},
                child: Container(
                  height: 117,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff0F1B29),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 58,
                        width: 58,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      title: Text(
                        controller.pharmacyEstimate.pharmaName,
                        style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: "Montserrat Medium"),
                      ),
                      subtitle: Text(
                        TimeConvert().convertTimeToStringBrazilFormat(controller.pharmacyEstimate.createdOn),
                        style: TextStyle(color: ColorsApp.KTertiaryColor, fontSize: 13,fontFamily: "Montserrat Regular"),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.pharmacyEstimate.items.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                return ExpansionTile(
                    title: Text(pharmacyEstimate.items[index].name),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Valor Unitário: R\$ ${pharmacyEstimate.items[index].price}"),
                          Text("Dosagem: ${pharmacyEstimate.items[index].concentration}"),
                        ])

                    ],

                );
              })
            ],
          ),
        ),
      );
    });
  }
}
