import 'package:HealthBook/app/modules/first_access/first_access_controller.dart';
import 'package:HealthBook/app/style/size_config.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TermOfUsePage extends StatefulWidget {

  @override
  _TermOfUsePageState createState() => _TermOfUsePageState();
}

class _TermOfUsePageState extends ModularState<TermOfUsePage,FirstAccessController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height = SizeConfig.screenHeight;
    var width = SizeConfig.screenWidth;
    var blockVertical=SizeConfig.blockSizeVertical;
    var blockHorizontal=SizeConfig.blockSizeHorizontal;


    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: ClampingScrollPhysics(),
          children:[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 35),
                      height: 100,
                      child:Image.asset('assets/images/ribbon.png',)
                  ),
                  SizedBox(height: 30,),
                  Container(
                    color: Colors.white,
                    child:Center(
                      child: Image.asset('assets/images/logo3.png',height: blockVertical*17,),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Column(
              children: [
                SizedBox(height: blockVertical*3,),
                Text('Termos de uso',style: TextStyle(
                  fontFamily: 'Montserrat Bold',
                  fontSize: 14,
                  color: ColorsApp.lightGray,

                ),),

                SizedBox(height: blockVertical*2,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 52),
                  child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam.',textAlign: TextAlign.center,style: TextStyle(
                      fontFamily: 'Montserrat Light',
                      fontSize: 12,
                      color: ColorsApp.lightGray,
                      height: 2.3
                  ),),
                ),

                SizedBox(height: 30,),

                Container(
                  width: blockHorizontal*35,
                  height: blockVertical*5,
                  margin: EdgeInsets.only(left: 40,right: 41),
                  decoration: BoxDecoration(
                    color: ColorsApp.dark,
                    boxShadow: [
                      BoxShadow(
                        color: ColorsApp.lightBlue.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      onPressed: () async{
                        Modular.to.pushReplacementNamed('/PrivacyPolicy');
                      }, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Aceito',style: TextStyle(
                        fontFamily: 'Montserrat SemiBold',
                        fontSize: 13,
                        color: Colors.white,

                      ),),
                      SizedBox(width: blockHorizontal*3,),
                      Image.asset('assets/images/forward.png',height: 12,)
                    ],
                  )),
                ),

                SizedBox(height: 30,),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
