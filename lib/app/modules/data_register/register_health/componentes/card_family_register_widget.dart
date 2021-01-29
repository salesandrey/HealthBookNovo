import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'card_welcome_widget.dart';

class CardFamilyRegisterWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Flexible(flex: 2,
            child:Container(
            margin: EdgeInsets.only(top: 15),
            height: 150,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/logo3.png',
                fit: BoxFit.cover,
                height: 150,
              ),
            ),
          ),
          ),
          Flexible(flex: 1,
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Você sabia é possível cadastrar",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Montserrat Bold",
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Flexible(flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 45, width: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: FlatButton(onPressed: () {
                    Modular.to.pushReplacementNamed("/RegisterFamily");
                  },
                    shape: StadiumBorder(),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                            child: Text("SEUS FAMILIARES", style: TextStyle(color: Colors.black, fontSize: 12))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 45, width: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: FlatButton(disabledColor: Colors.grey,
                    onPressed: null,
                    shape: StadiumBorder(),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                            child: Text("SEUS PETS", style: TextStyle(color: Colors.black, fontSize: 12))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Align(alignment: Alignment.center,
                child: Container(
                  height: 45,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      showModalBottomSheet(
                          enableDrag: false,
                          isScrollControlled:false,
                          isDismissible: false,
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0))),
                          context: context,
                          builder: (BuildContext context){
                            return CardWelcomeWidget();
                          });
                    },
                    shape: StadiumBorder(),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: Text("AGORA NÃO, OBRIGADO",style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        FittedBox(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}