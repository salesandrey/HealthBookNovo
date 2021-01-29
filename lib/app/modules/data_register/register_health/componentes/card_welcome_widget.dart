import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


class CardWelcomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(flex: 1,),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(top: 15),
                height: 150,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/circle.png',
                    fit: BoxFit.cover,
                    height: 150,),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(flex: 2,
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Pronto! Agora o seu histórico de saúde, dos seus familiares e dos seus pets estão na palma da sua mão.",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, height: 1.5,),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "Comece agora sua experienceia com\n o Health Book",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(margin: EdgeInsets.only(bottom: 35), height: 45, width: 180,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(50),
                    ),
                    child: FlatButton(
                      onPressed: () {Modular.to.pushReplacementNamed("/Home");},
                      shape: StadiumBorder(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("COMEÇAR",style: TextStyle(color: Colors.white,fontSize: 14)),
                          Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
