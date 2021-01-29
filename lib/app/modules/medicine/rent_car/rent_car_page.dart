import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/modules/medicine/medicine_controller.dart';
import 'package:HealthBook/app/modules/medicine/rent_car/componentes/card_option_rent_car_widget.dart';
import 'package:HealthBook/app/modules/medicine/rent_car/componentes/dropdown_type_product_widget.dart';
import 'package:HealthBook/app/modules/medicine/rent_car/componentes/filter_textfield_rent_car_widget.dart';
import 'package:HealthBook/app/modules/medicine/rent_car/componentes/product_card_widget.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'rent_car_controller.dart';

class RentCarPage extends StatefulWidget {

  final String type;
  final UserModel currentUser;

  const RentCarPage({Key key, this.type, this.currentUser}) : super(key: key);

  @override
  _RentCarPageState createState() => _RentCarPageState(type: type,currentUser: currentUser);
}

class _RentCarPageState extends ModularState<RentCarPage, RentCarController> {

  final String type;
  final UserModel currentUser;
  final GlobalKey keyMedicine = GlobalKey();
  final GlobalKey keyDocument = GlobalKey();

  _RentCarPageState({this.type,this.currentUser});

  void initValues() async{
    controller.changeTypeProduct(type);
    controller.changeCurrentUser(currentUser);
    await controller.getMedicines();
    await controller.getDocuments();
    controller.changeSegmented(0);
  }




  @override
  void initState() {
    initValues();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      Map < int, Widget> segments = {
        0:Container(
            child: Column(
              children: [
                CardOptionRentCarWidget(navigation: (){
                  Navigator.of(context).pushNamed("/RegisterMedicine",arguments: controller.currentUser.id).then((value)
                      {
                        if(value)
                          controller.getMedicines();
                      }
                );},
                    title: "Orçar um novo medicamento",imagePath: "assets/images/icons/pills_white.png"),
                FilterTextFieldRentCarWidget(key: keyMedicine,changeFilter: controller.changeFilterSegment1,hintText: "Pesquisar medicamento",),
                SizedBox(height: 17),
                DropDownTypeProductWidget(changeType: controller.changeTypeProduct,currentSelection: controller.typeProduct),
                SizedBox(height: 17),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.filteredMedicines==null?0:controller.filteredMedicines.length,
                    itemBuilder: (context,index) {
                      return ProductCardWidget(
                          icon: Icons.add,
                          viewDetails: (){ Navigator.of(context).pushNamed("/ViewMedicine",arguments: controller.filteredMedicines[index]);},
                          addAndRemoveProduct: (){controller.addMedicineToCar(controller.filteredMedicines[index]);},
                          title: controller.filteredMedicines[index].name,
                          description: "Receita de Medicamento \n${controller.typeProduct}",
                          date: TimeConvert().convertTimeToStringBrazilFormat(controller.filteredMedicines[index].createdOn));
                    }),
              ],
            )),
        1:Container(
            child: Column(
              children:[
                CardOptionRentCarWidget(navigation: (){
                  Navigator.of(context).pushNamed("/RegisterDocument",arguments: controller.currentUser.id).then((value)
                  {
                    if(value)
                      controller.getDocuments();
                  }
                  );},
                    title: "Orçar uma nova receita",
                    imagePath: "assets/images/icons/write_white.png"),
                FilterTextFieldRentCarWidget(key: keyDocument,changeFilter: controller.changeFilterSegment2,hintText: "Pesquisar documento",),
                SizedBox(height: 17),
                DropDownTypeProductWidget(changeType: controller.changeTypeProduct,currentSelection: controller.typeProduct),
                SizedBox(height: 17),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.filteredDocuments==null?0:controller.filteredDocuments.length,
                    itemBuilder: (context,index) {
                      return ProductCardWidget(
                          icon: Icons.add,
                          viewDetails: (){
                            Navigator.of(context).pushNamed("/ViewDocument",arguments: controller.filteredDocuments[index]);
                          },
                          addAndRemoveProduct: (){controller.addDocumentToCar(controller.filteredDocuments[index]);},
                          title: controller.filteredDocuments[index].title,
                          description: "${controller.filteredDocuments[index].category}",
                          date: TimeConvert().convertTimeToStringBrazilFormat(controller.filteredDocuments[index].createdOn));
                    }),
              ],
            ))
      };


      return Scaffold(
        floatingActionButton: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 56,
              height: 56,
              child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/CarList");
              },
                  backgroundColor: Color(0xffFFCF3B),
                  child:Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 30)),
            ),
            Visibility(
              visible: controller.car.car.isNotEmpty,
              child: Positioned(
                right: -10,
                  child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),
                      child: Center(child: Text(controller.car.car.length.toString(),style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: "Montserrat Bold"),)))),
            )
          ]),
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: ColorsApp.KPrimaryColor,
          leading: IconButton(
            onPressed: () {
              controller.car.car.clear();
              Navigator.of(context).popUntil(ModalRoute.withName('/'));
            },
            icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
          ),
          title: Text(
            "Compra de Medicamento",
            style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            child: Scaffold(
                    backgroundColor: Colors.white,
                    appBar: AppBar(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      leading: Container(),
                      bottom: PreferredSize(
                        preferredSize: Size(MediaQuery.of(context).size.width,36),
                        child: Container(
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
                                  child:Text("MEDICAMENTOS",
                                      style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15))),
                              1:Container(padding: EdgeInsets.symmetric(vertical: 8),child:Text("DOCUMENTOS",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15)))},
                            onValueChanged: controller.changeSegmented,
                            pressedColor: Colors.white,
                          ),
                        ))),
                    body: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 20,),
                          segments[controller.selectSegmented],
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
