import 'dart:io';
import 'dart:ui';

import 'package:HealthBook/app/style/theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';


class UserPhotoEditWidget extends StatelessWidget {

  final Function takePicture;
  final Function useFromGallery;
  final File currentImage;
  final String image;
  final String nameUser;

  const UserPhotoEditWidget({Key key,
    this.takePicture,
    this.useFromGallery,
    this.image,
    this.currentImage,
    this.nameUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap:useFromGallery,
              child: Stack(alignment: Alignment.bottomCenter,
                children: [
                  Container(width: 225,height: 196),
                image==null && currentImage==null ? DottedBorder(
                      borderType: BorderType.Circle,
                      color: ColorsApp.KTertiaryColor,
                      dashPattern: [8, 8, 8, 8],
                      child:  Container(
                        width: 188,
                        height: 176,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 52,
                              child: Image(
                                image: AssetImage('assets/images/Grupo 3811@3x.png'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 25),
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
                      )
                  ): currentImage==null?
                Container(
                    width: 188,
                    height: 176,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage('https://health.lanconi.com.br/uploads/${image}'),fit: BoxFit.cover)))
                    :
                Container(
                    width: 188,
                    height: 176,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: FileImage(currentImage),fit: BoxFit.cover))),
                  Positioned(left: 0,top: 0,
                    child: MaterialButton(
                      minWidth: 70,
                      onPressed: takePicture,
                      color: Color(0xFF707070),
                      textColor: Colors.white,
                      child: Icon(
                        Icons.camera_alt,
                        size: 27,
                      ),
                      padding: EdgeInsets.all(20),
                      shape: CircleBorder(),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 22),
            Text(nameUser,style: TextStyle(fontFamily: "Montserrat Medium",fontSize: 18,color: Colors.black))
          ],
        ),
      ),
    );
  }
}
