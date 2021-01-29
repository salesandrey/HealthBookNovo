import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TypeMedicineBottomSheet extends StatelessWidget {

  final UserModel currentUser;

  const TypeMedicineBottomSheet({Key key, this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Divider(
            thickness: 3,
            indent: 125,
            endIndent: 125,
            color: ColorsApp.KWhiteColor,
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,
                    color: ColorsApp.KWhiteColor,
                  ),
                  child: Image(
                    image: AssetImage('assets/images/logos/logo3.png'),height: 85,
                  ),
                ),
                Container(
                  child: Text('Qual tipo de orçamento \ndeseja fazer?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 16,
                        color: ColorsApp.KBlackColor,
                        fontFamily: "Montserrat Bold"),
                  ),
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsApp.KBlackColor,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: RaisedButton(
                    elevation: 0,
                    highlightElevation: 0,
                    splashColor: ColorsApp.KPrimaryColor.withOpacity(0.2),
                    highlightColor: ColorsApp.KTertiaryColor.withOpacity(0.5),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/RentCar",arguments: ["Manipulado",currentUser]);
                    },
                    color: ColorsApp.KPrimaryColor,
                    textColor: ColorsApp.KBlackColor,
                    shape: StadiumBorder(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: FittedBox(
                            child: Text(
                              'MANIPULADO',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 13,fontFamily: "Montserrat-Medium"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsApp.KBlackColor,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: RaisedButton(
                    elevation: 0,
                    highlightElevation: 0,
                    splashColor:
                    ColorsApp.KPrimaryColor.withOpacity(0.2),
                    highlightColor: ColorsApp.KTertiaryColor.withOpacity(0.5),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/RentCar",arguments: ["Industrializado (Farmácia)",currentUser]);
                    },
                    color: ColorsApp.KPrimaryColor,
                    textColor: ColorsApp.KBlackColor,
                    shape: StadiumBorder(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: FittedBox(
                            child: Text(
                              'INDUSTRIALIZADO (FARMÁCIA)',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: "Montserrat-Medium",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
