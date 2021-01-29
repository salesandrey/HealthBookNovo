import 'package:HealthBook/app/style/theme.dart';
import 'package:HealthBook/app/utils/time_convert.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'card_medicine_widget_controller.dart';

class CardMedicineWidget extends StatelessWidget {

  final CardMedicineWidgetController controller;
  final String imagePath;
  final Function visualizeMedicine;
  final Function deleteDocument;
  final Function updateMedicine;

  const CardMedicineWidget({Key key,
    this.controller, this.imagePath,
    this.visualizeMedicine, this.deleteDocument, this.updateMedicine}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return InkWell(
        onTap: visualizeMedicine,
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: Color(0xfffafafa),
          child: Container(
            height: 84,
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                            margin:
                            EdgeInsets.only(right: 15, left: 10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff0F1B29),
                            ),
                            child: Center(
                              child: Container(
                                  margin: EdgeInsets.only(left: 4),
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(imagePath,color: Colors.white,)),
                            )),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Text(
                                  controller.medicine.name,
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 12,
                                    fontFamily: "Montserrat SemiBold",
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 6,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    "Dosagem: ${controller.medicine.dosage}",
                                    style: TextStyle(
                                        fontFamily: "Montserrat-Regular",
                                        color: Color(0xff858585),
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  AutoSizeText(
                                    TimeConvert().convertTimeToStringBrazilFormat(controller.medicine.createdOn),
                                    style: TextStyle(
                                        fontFamily: "Montserrat-Regular",
                                        color: ColorsApp.KTertiaryColor,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(height: 14,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Visibility(
                              visible: controller.show,
                              child: Card(
                                elevation: 2,
                                margin: EdgeInsets.all(1.5),
                                child: Container(
                                  width: 25,
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                          onTap:deleteDocument,
                                          child: Image.asset('assets/images/icons/delete.png',
                                              height: 18)),
                                      Icon(
                                        Icons.visibility,
                                        size: 18,
                                      ),
                                      InkWell(
                                        onTap: updateMedicine,
                                        child: Icon(
                                          Icons.edit,
                                          size: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                controller.showOptions(true);
                              },
                              child: Container(
                                child: Icon(
                                  Icons.more_vert,
                                  color: Color(0xff858585),
                                  size: 28,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
