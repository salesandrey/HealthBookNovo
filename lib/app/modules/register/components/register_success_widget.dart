import 'package:HealthBook/app/style/size_config.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';

import 'biometrics_bottomsheet_widget.dart';

class RegisterSuccessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(height: SizeConfig.safeBlockVertical * 50,margin: EdgeInsets.symmetric(horizontal: 45.0),
        child: Column(
          children: [
            Flexible(flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top:35.0,bottom: 20),
                child: Container(
                    width: SizeConfig.safeBlockHorizontal * 30,
                    height: SizeConfig.safeBlockVertical * 30,
                    child:Image.asset("assets/images/circle.png")),
              ),
            ),
            Flexible(child:Text("Seu cadastro foi concluído com sucesso!",textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF0F1B29),fontFamily: "Montserrat Bold",fontSize:SizeConfig.safeBlockHorizontal*5),)),
            Flexible(child:SizedBox(height: SizeConfig.safeBlockVertical * 20,)),
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.06,
                margin: EdgeInsets.only(left: 40,right: 41),
                decoration: BoxDecoration(color: ColorsApp.dark, boxShadow:[
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    onPressed: (){
                      showModalBottomSheet(
                          enableDrag: false,
                          isScrollControlled: false,
                          isDismissible: false,
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0))),
                          context: context,
                          builder: (BuildContext context){
                            return BiometicsBottomSheetWidget();
                          });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('ENTRAR',style: TextStyle(
                            fontFamily: 'Montserrat SemiBold',
                            fontSize: 13,
                            color: Colors.white)),
                        SizedBox(width: 3),
                        Image.asset('assets/images/forward.png',height: 12,)
                      ],
                    )),
              ),
            ),
          ],));
  }
}
