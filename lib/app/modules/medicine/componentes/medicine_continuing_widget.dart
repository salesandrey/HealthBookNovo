

import 'package:HealthBook/app/models/patient_medicine_model.dart';
import 'package:HealthBook/app/modules/medicine/register_medicine/register_medicine_controller.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:brasil_fields/formatter/data_input_formatter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class MedicineContinuingWidget extends StatelessWidget {

  final PatientMedicineModel model;
  final Function changeDateStart;
  final Function changeDateEnd;
  final Function changePills;
  final TextEditingController dateStart;
  final TextEditingController dateEnd;
  final TextEditingController numberPills;

  const MedicineContinuingWidget({
    Key key,
    this.model,
    this.dateStart,
    this.dateEnd,
    this.numberPills,
    this.changeDateStart,
    this.changeDateEnd,
    this.changePills}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50,left: 10,right: 10,bottom: 30),
      decoration: BoxDecoration(
          border: Border.all(style: BorderStyle.solid,color: ColorsApp.KSecondaryColor,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          )
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Data de inicio do tratamento",
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorsApp.KBlackColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 58,
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: TextField(
                  controller:dateStart,
                  onChanged: changeDateStart,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    DataInputFormatter(),
                  ],
                  decoration: new InputDecoration(
                      prefixIcon:Container(
                        width: 50,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 16,
                              child: Image(
                                image: AssetImage('assets/images/Icon material-date-range@3x.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      suffixIcon: Container(
                        width: 50,
                        child: Image(
                          image: AssetImage(
                              'assets/images/Icon ionic-ios-arrow-forward.png'),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'dd/mm/aaaa',
                      hintStyle: TextStyle(
                          height: 1.6, fontSize: 12, color: ColorsApp.KTertiaryColor),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Data de fim do tratamento",
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorsApp.KBlackColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 58,
                alignment: Alignment.center,
                child: TextField(
                  controller: dateEnd,
                  onChanged: changeDateEnd,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    DataInputFormatter(),
                  ],
                  decoration: new InputDecoration(
                      prefixIcon: Container(
                        width: 50,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 16,
                              child: Image(
                                image: AssetImage('assets/images/Icon material-date-range@3x.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      suffixIcon: Container(
                        width: 50,
                        child: Image(
                          image: AssetImage(
                              'assets/images/Icon ionic-ios-arrow-forward.png'),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'dd/mm/aaaa',
                      hintStyle: TextStyle(
                          height: 1.6, fontSize: 12, color: ColorsApp.KTertiaryColor),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Quantidade de comprimidos por dia",
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorsApp.KBlackColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: TextField(
                  controller:numberPills,
                  onChanged: changePills,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      prefixIcon: Container(
                        width: 50,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 16,
                              child: Image(
                                image: AssetImage('assets/images/Icon awesome-pills@3x.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsApp.KSecondaryColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'ex: 3',
                      hintStyle: TextStyle(
                          height: 1.6, fontSize: 12, color: ColorsApp.KTertiaryColor),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
