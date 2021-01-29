import 'card_family_register_widget.dart';
import 'package:HealthBook/app/style/size_config.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';

class RegisterDataSuccessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(height: SizeConfig.blockSizeVertical * 50,margin: EdgeInsets.symmetric(horizontal: 45.0),
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
              Flexible(flex: 1,child: Text("Parabéns, seu cadastro foi salvo.",textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF0F1B29),fontFamily: "Montserrat Bold",fontSize: SizeConfig.safeBlockHorizontal*5),)),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      "Lorean ipsum dolor sit amet,consectetur sadipscing elitr, sed diam nonurmy eirnod tempor invidunt ut",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(child: SizedBox(height: SizeConfig.safeBlockVertical * 5,)),
              Container(
                width: SizeConfig.safeBlockHorizontal * 40,
                height: SizeConfig.safeBlockVertical * 6,
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
                            return CardFamilyRegisterWidget();
                          });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('VAMOS LÁ',style: TextStyle(
                            fontFamily: 'Montserrat SemiBold',
                            fontSize: 13,
                            color: Colors.white)),
                        SizedBox(width: 5),
                        Image.asset('assets/images/forward.png',height: 12,)
                      ],
                    )),
              ),
            ],)),
    );
  }
}