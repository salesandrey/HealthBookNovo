import 'package:HealthBook/app/modules/my_health/componentes/filter_my_health_widget.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'my_health_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:HealthBook/app/componentes/CardDocumentWidget/card_document_widget_controller.dart';
import 'package:HealthBook/app/componentes/CardDocumentWidget/card_document_widget_page.dart';

class MyHealthPage extends StatefulWidget {

  @override
  _MyHealthPageState createState() => _MyHealthPageState();
}

class _MyHealthPageState extends ModularState<MyHealthPage, MyHealthController> {


  Future<void> initValues()async{
    await controller.getUser();
    await controller.getDocuments();
  }

  @override
  void initState() {
    initValues();
    super.initState();
  }

    @override
    Widget build(BuildContext context){
    return Observer(builder: (context) {
      if(controller.currentUser==null){
        return Scaffold(body: Center(
            child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)))
        );
      }
      return Scaffold(
        backgroundColor: ColorsApp.KPrimaryColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: (){
                  Modular.to.pushReplacementNamed("/ProfileEdit",arguments: controller.currentUser);
                },
                child: Container(
                  height: 117,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff0F1B29),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        height: 58,
                        width: 58,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://health.lanconi.com.br/uploads/${controller.currentUser.photo}')),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      title: Text(
                        controller.currentUser.name,
                        style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: "Montserrat Medium"),
                      ),
                      subtitle: Text(
                        controller.currentUser.email,
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
              FilterMyHealthWidget(changeFilter: controller.changeFilter,),
              SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                    itemCount: controller.filteredMedicine==null? 0: controller.filteredMedicine.length,
                    itemBuilder: (context,index){
                      return CardDocumentWidget(
                        controller: CardDocumentWidgetController(document:controller.filteredMedicine[index]),
                        visualizeDocument: (){
                          Navigator.of(context).pushNamed("/ViewDocument",arguments: controller.filteredMedicine[index]);
                        },
                        imagePath: "assets/images/icons/write.png",
                        deleteDocument: () {controller.removeDocument(controller.filteredMedicine[index]);},
                      );
                    }),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/RegisterDocument",arguments: controller.currentUser.id).then((value){
              if(value){
                controller.getDocuments();
              }
            });
          },
          backgroundColor: Color(0xffFFCF3B),
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 36,
          ),
        ),
      );
    });
    }
  }
