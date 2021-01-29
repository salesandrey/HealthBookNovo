
import 'package:HealthBook/app/style/theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PlaneHideWidget extends StatelessWidget {


  final Function changeNumberCard;
  final Function changeOperator;
  final Function takePhoto;
  final File image;

  const PlaneHideWidget({Key key,
    this.changeNumberCard,
    this.changeOperator,
    this.takePhoto, this.image}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50,left: 10,right: 10,bottom: 30),
      decoration: BoxDecoration(
          border: Border.all(style: BorderStyle.solid, color: ColorsApp.KSecondaryColor),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8))
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Nome da operadora",
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
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: TextField(
                  onChanged: changeOperator,
                  keyboardType: TextInputType.text,
                  decoration: new InputDecoration(
                      prefixIcon: Container(
                        width: 50,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 14,
                              child: Image(
                                image: AssetImage('assets/images/health-report@3x.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      suffixIcon: Container(
                        width: 20,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 8,
                              child: Image(
                                image: AssetImage('assets/images/Icon ionic-ios-arrow-forward@3x.png'),
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
                      hintText: 'Operadora',
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
                  "Número da carteirinha",
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
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: TextField(
                  onChanged: changeNumberCard,
                  keyboardType: TextInputType.text,
                  decoration: new InputDecoration(
                      prefixIcon:  Container(
                        width: 50,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 16,
                              child: Image(
                                image: AssetImage('assets/images/health@3x.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      suffixIcon: Container(
                        width: 20,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 8,
                              child: Image(
                                image: AssetImage('assets/images/Icon ionic-ios-arrow-forward@3x.png'),
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
                      hintText: 'N:',
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
                  "Foto da carteirinha",
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorsApp.KBlackColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: takePhoto,
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(8),
                      color: ColorsApp.KTertiaryColor,
                      dashPattern: [8, 8, 8, 8],
                      child: image==null?Container(
                        alignment: Alignment.center,
                        height: 176,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 52,
                              child: Image(image: AssetImage('assets/images/Grupo 3811@3x.png')),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Text(
                                "envie uma imagem\npara o seu perfil",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 2,
                                    fontSize: 14,
                                    color: Color(0xffA4A4A4)),
                              ),
                            ),
                          ],
                        ),
                      ):Container(
                        width: 188,
                        height: 176,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: FileImage(image),
                                fit: BoxFit.cover)),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
