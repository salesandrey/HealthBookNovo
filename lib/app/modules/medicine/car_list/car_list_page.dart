import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'car_list_controller.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:HealthBook/app/modules/medicine/rent_car/componentes/product_card_widget.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:HealthBook/app/utils/junk_icon_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CarListPage extends StatefulWidget {

  @override
  _CarListPageState createState() => _CarListPageState();
}

class _CarListPageState extends ModularState<CarListPage, CarListController> {


  @override
  Widget build(BuildContext context) {
   return Observer(builder: (_){
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
           "Lista de Produtos",
           style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
         ),
         centerTitle: true,
       ),
       body: SingleChildScrollView(
         child: Column(
           children: <Widget>[
             ListView.separated(
                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 itemCount: controller.car.car.isEmpty?0:controller.car.car.length,
                 separatorBuilder: (context, index) => Container(
                   padding: EdgeInsets.symmetric(horizontal: 20),
                   child: Divider(
                     color: Colors.black,
                   ),
                 ),
                 itemBuilder: (context,index) {
                   print(controller.car.car[index].createOnMedicine);
                   switch (controller.car.car[index].type) {

                     case "Medicine":
                       return ProductCardWidget(
                           icon: JunkIcon.junk,
                           addAndRemoveProduct: () {
                             controller.car.removeProduct(
                                 controller.car.car[index]);
                           },
                           title: controller.car.car[index].name,
                           description: "Receita de Medicamento \n${controller
                               .rentCarController.typeProduct}",
                           date: TimeConvert().convertTimeToStringBrazilFormat(controller.car.car[index].createOnMedicine));
                       break;
                     case "Document":
                       return ProductCardWidget(
                           icon: JunkIcon.junk,
                           addAndRemoveProduct: () {
                             controller.car.removeProduct(
                                 controller.car.car[index]);
                           },
                           title: controller.car.car[index].documentTitle,
                           description: "${controller.car.car[index]
                               .documentCategory}",
                           date: TimeConvert().convertTimeToStringBrazilFormat(controller.car.car[index].createOnDocument));
                       break;
                     default:
                       return Container();
                       break;
                   }
                 }
             ),
             SizedBox(height: 56),
             MaterialButton(
                 minWidth: MediaQuery.of(context).size.width * 0.5,
                 height: 45,
                 shape: StadiumBorder(),
                 elevation: 0,
                 color: Colors.black,
                 child: Text("FECHAR CARRINHO",style: TextStyle(fontSize: 13,color: Colors.white,fontFamily: "Montserrat SemiBold"),),
                 onPressed: controller.car.car.isEmpty ? null: (){
                   Navigator.of(context).pushNamed("/DeliveryList");
                 }),
             SizedBox(height: 15),
             MaterialButton(
                 minWidth: MediaQuery.of(context).size.width * 0.5,
                 height: 45,
                 shape: StadiumBorder(side:BorderSide(color: Colors.black,width: 1)),
                 elevation: 0,
                 color: Colors.white,
                 child: Text("ADICIONAR MAIS",style: TextStyle(fontSize: 13,color: Colors.black,fontFamily: "Montserrat SemiBold"),),
                 onPressed: (){
                   Navigator.of(context).pop();
                 }),
             SizedBox(height: 54),
           ],
         ),
       ),
     );
   });
  }
}
