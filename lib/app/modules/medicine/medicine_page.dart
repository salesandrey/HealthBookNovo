import 'package:HealthBook/app/modules/medicine/componentes/type_medicine_bottomsheet_widget.dart';
import 'package:HealthBook/app/repositories/pharma_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'medicine_controller.dart';
import 'package:flutter/cupertino.dart';
import 'componentes/estimative_card_widget.dart';

class MedicinePage extends StatefulWidget {

  @override
  _MedicinePageState createState() => _MedicinePageState();
}

class _MedicinePageState extends ModularState<MedicinePage, MedicineController> {


  @override
  void initState() {
    controller.getCurrentUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      Map < int, Widget> segments = {
        0:Container(
            child: Column(
              children: [
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.estimatePending.isEmpty? 0 : controller.estimatePending.length,
                    itemBuilder: (context,index) {
                      return EstimateCardWidget(
                        navigation: (){
                          Navigator.of(context).pushNamed("/EstimateDetails",arguments: [controller.estimatePending[index].id,"EM ANDAMENTO"]).then((value)
                          {
                            if(value){
                              controller.getEstimates();
                            }
                          });
                        },
                        status: "STATUS: EM ANDAMENTO",
                        statusColor: Color(0xFF00D1FB),
                        colorCard: index % 2 ==0 ? Color(0xFFFAFAFA) : Color(0xFFFFFFFF),
                        estimate: controller.estimatePending[index],
                      );
                    }),
              ],
            )),
        1:Container(
            child: Column(
              children:[
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.estimateDelivered.isEmpty? 0 : controller.estimateDelivered.length,
                    itemBuilder: (context,index) {
                      return EstimateCardWidget(
                          navigation: (){
                            Navigator.of(context).pushNamed("/EstimateDetails",arguments: [controller.estimateDelivered[index].id,"FINALIZADO"]).then((value){
                              if(value){
                                controller.getEstimates();
                              }
                            });
                          },
                          status: "STATUS: FINALIZADO",
                          statusColor: Color(0xFF4DAA57),
                          colorCard: index % 2 ==0 ? Color(0xFFFAFAFA) : Color(0xFFFFFFFF),
                          estimate: controller.estimateDelivered[index],
                      );
                    }),
              ],
            ))
      };


      if(controller.currentUser==null){
        return Scaffold(body: Center(
            child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)))
        );
      }

      return Scaffold(
        backgroundColor: Colors.white,
        body: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("/ListMedicines",arguments: controller.currentUser);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),

                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF232F45),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height:60,
                              width: 80,
                              child: Image.asset('assets/images/pills_icon.png',fit: BoxFit.contain,)),
                          SizedBox(width: 20,),
                          Text("Cadastro de Medicamentos",style: TextStyle(color: Colors.grey[400],fontFamily:"Montserrat Medium"),),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: InkWell(
                    onTap: (){
                      showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
                          ),
                          builder: (BuildContext context){
                            return TypeMedicineBottomSheet(currentUser: controller.currentUser,);
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height:60,
                              width: 80,
                              child: Image.asset('assets/images/farmacia.png',fit: BoxFit.contain,)),
                          SizedBox(width: 20,),
                          Text("Compra de Medicamentos",style: TextStyle(color: Colors.grey[400],fontFamily:"Montserrat Medium"),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height:54),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(child:Text(
                    "Histórico de orçamentos",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color(0xFF0F1B29),
                        fontSize: 21,fontFamily: "Montserrat SemiBold"))),
                ),
                SizedBox(height: 13),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      children: [
                        Text(
                          controller.estimates!=null && controller.estimates.length!=0?controller.estimates.length==1?
                          "${controller.estimates.length} Orçamento registrado":"${controller.estimates.length} Orçamentos registrados":"",
                          style: TextStyle(fontSize: 16, color: ColorsApp.Kfivthcolor,fontFamily: "Montserrat Regular"),
                        )]),
                ),
                Expanded(
                  child: Scaffold(
                    backgroundColor: Colors.white,
                    appBar: AppBar(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        leading: Container(),
                        bottom: PreferredSize(
                            preferredSize: Size(MediaQuery.of(context).size.width,5),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              width: MediaQuery.of(context).size.width,
                              height: 36,
                              child: CupertinoSegmentedControl(
                                padding: EdgeInsets.zero,
                                borderColor: Colors.black,
                                selectedColor: Colors.black,
                                groupValue: controller.selectSegmented,
                                children: {
                                  0:Container(
                                      padding: EdgeInsets.symmetric(vertical: 8),
                                      child:Text("EM ANDAMENTO",
                                          style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15))),
                                  1:Container(padding: EdgeInsets.symmetric(vertical: 8),child:Text("ANTERIORES",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15)))},
                                onValueChanged: controller.changeSegmented,
                                pressedColor: Colors.white,
                              ),
                            ))),
                    body: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 22),
                            segments[controller.selectSegmented],
                          ],
                        ),
                      ),
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
