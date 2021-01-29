
import 'package:HealthBook/app/modules/profile_edit/configurations/componentes/card_configuration_widget.dart';
import 'package:HealthBook/app/utils/new_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'configurations_controller.dart';
import 'package:HealthBook/app/style/theme.dart';

class ConfigurationsPage extends StatefulWidget {

  @override
  _ConfigurationsPageState createState() => _ConfigurationsPageState();
}

class _ConfigurationsPageState extends ModularState<ConfigurationsPage, ConfigurationsController> {


  @override
  void initState() {
    controller.getGeolocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Observer(builder: (context) {

      if(controller.geolocation==null){
        return Scaffold(body: Center(
            child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)))
        );
      }

      return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: ColorsApp.KPrimaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context,false);
            },
            icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
          ),
          title: Text(
            "Configurações",
            style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              CardConfigurationWidget(
                navigator: (){
                  Navigator.of(context).pushNamed("/ProfileEdit/GeolocationConfiguration").then((value) {
                    if(value){
                      controller.getGeolocation();
                    }
                  });
                },
                icon: NewIcons.search_location,
                title: "Pesquisa por geolocalização",
                subtitle: "Distância Padrão: ${controller.geolocation.toInt()}Km",),
              CardConfigurationWidget(
                navigator: (){Navigator.of(context).pushNamed("/ProfileEdit/Address");},
                title: "Endereços de entrega",
                subtitle: "Cadastre seus endereços",
                icon: NewIcons.location_on,
              ),

            ],
          ),
        ),
      );

    });


  }
}
