import 'package:HealthBook/app/style/size_config.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';

class TutorialWidget extends StatelessWidget {

  final String title;

  const TutorialWidget({Key key,@required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height = SizeConfig.screenHeight;
    var width = SizeConfig.screenWidth;
    var blockVertical = SizeConfig.blockSizeVertical;
    var blockHorizontal = SizeConfig.blockSizeHorizontal;
    return Container(
      width: width,
      height: height,
      child: Column(
        children: [
          SizedBox(height: blockVertical*5),
          Image.asset('assets/images/logo3.png',width: blockHorizontal*40,),
          SizedBox(height: blockVertical*4),
          Text(title,textAlign: TextAlign.center,style: TextStyle(
              fontFamily: 'Montserrat Bold',
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: ColorsApp.gray,
              letterSpacing: 1.1,
              height: 1.5
          ),),
        ],
      ),
    );
  }
}
