import 'package:HealthBook/app/modules/home/componentes/drawers_widget.dart';
import 'package:HealthBook/app/modules/patient_home/components/box_option_widget.dart';
import 'package:HealthBook/app/modules/patient_home/components/medicine_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'patient_home_controller.dart';

class PatientHomePage extends StatefulWidget {

  final PageController pageController;
  const PatientHomePage({Key key, this.pageController}): super(key: key);

  @override
  _PatientHomePageState createState() => _PatientHomePageState(pageController);
}

class _PatientHomePageState extends ModularState<PatientHomePage, PatientHomeController> {

  final PageController pageController;

  _PatientHomePageState(this.pageController);


  Future<void> initValues() async{
    await controller.getCurrentUser();
    await controller.getMedicines();
  }

  @override
  void initState() {
    initValues();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Observer(builder: (_){
      if(controller.currentUser==null){
        return Scaffold(body: Center(
            child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)))
        );
      }

      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xFF0F1B29)),
                      height: 180,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 29,vertical: 49),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Image.asset(
                          "assets/images/logo_banner.png",
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                          child: Text(
                            "Seus Medicamentos",
                            style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  height: 120,
                  color: Colors.white,
                  width: double.infinity,
//            color: Colors.yellow,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.medicines==null?0:controller.medicines.length,
                      itemBuilder: (context,index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MedicineCardWidget(
                            viewMedicine: (){
                              Navigator.of(context).pushNamed("/ViewMedicine",arguments: controller.medicines[index]);
                            },
                            title: controller.medicines[index].name,
                            hour: controller.medicines[index].time,
                          ),
                        );
                      }
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BoxOptionWidget(
                      navigator: (){pageController.jumpToPage(1);},
                      img: "assets/images/prancheta.png",
                      text: "Minha\nSaude",
                      color: Colors.black,
                      textColor: Colors.white,

                    ),
                    BoxOptionWidget(
                      navigator: (){pageController.jumpToPage(3);},
                      img: "assets/images/pills_icon.png",
                      text: "Medicamentos",
                      color:Color(0xFF232F45),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BoxOptionWidget(
                      navigator: (){pageController.jumpToPage(2);},
                      img: "assets/images/aparelho_medico.png",
                      text: "Consultas",
                      color:Color(0xFF00D1FB),
                      textColor: Colors.black,
                    ),
                    BoxOptionWidget(
                      img: "assets/images/dentes.png",
                      text: "Odontologia",
                      textColor: Colors.black,
                      color: Color(0xFF0071BC),

                    ),
                  ],
                ),
                BoxOptionWidget(
                  navigator: (){
                    Navigator.of(context).pushNamed("/ListPet");
                  },
                  img: "assets/images/patinhas.png",
                  text: "Meus Pets",
                  textColor: Colors.white,
                  color: Color(0xFF232F45),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
