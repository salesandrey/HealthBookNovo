import 'package:HealthBook/app/modules/list_dependent/components/card_family_widget.dart';
import 'package:HealthBook/app/modules/list_dependent/components/family_welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'list_dependent_controller.dart';

class ListDependentPage extends StatefulWidget {
  @override
  _ListDependentPageState createState() => _ListDependentPageState();
}

class _ListDependentPageState extends ModularState<ListDependentPage, ListDependentController> {

  @override
  void initState() {
    controller.dependents.clear();
    controller.getDependents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (controller.dependents.isEmpty) {
        return Scaffold(body: Center(
            child: CircularProgressIndicator(backgroundColor: Colors.blue)));
      }
      return Scaffold(
          appBar: AppBar(
            title: Text("Cadastro de familiares",
              style: TextStyle(color: Color(0xff999999)),),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 1,
          ),
          body: Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true, physics: ScrollPhysics(),
                      itemCount: controller.dependents.length,
                      itemBuilder: (context, index) {
                        var item = controller.dependents[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardFamilyWidget(dependent: item,),
                        );
                      }),
                ),
                Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Modular.to.pushNamed('/RegisterFamily');
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xffFFCF3B),
                                ),
                                child: Icon(Icons.add, size: 30,),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text("ADICIONE AQUI MAIS UM FAMILIAR",
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium"),)
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(top: 25),
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff0F1B29),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            showDialog(
                                barrierDismissible: false, context: context,
                                builder: (BuildContext context) {
                                  return FamilyWelcomeWidget();
                                });
                          },
                          shape: StadiumBorder(),
                          child: Text('SALVAR', style: TextStyle(
                              color: Colors.white, fontSize: 16),),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )

      );
    });
  }
}