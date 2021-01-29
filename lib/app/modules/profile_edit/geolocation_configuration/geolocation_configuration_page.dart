import 'package:HealthBook/app/services/shared_local_storage_service.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'geolocation_configuration_controller.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class GeolocationConfigurationPage extends StatefulWidget {

  @override
  _GeolocationConfigurationPageState createState() =>
      _GeolocationConfigurationPageState();
}

class _GeolocationConfigurationPageState extends ModularState<
    GeolocationConfigurationPage, GeolocationConfigurationController> {

  @override
  Widget build(BuildContext context) {

    return Observer(builder: (context){
      return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: ColorsApp.KPrimaryColor,
          leading: IconButton(
            onPressed: () async {
              await controller.saveGeolocation();
              Navigator.pop(context,true);
            },
            icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
          ),
          title: Text(
            "Pesquisa por Geolocalização",
            style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 35),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Selecione a distancia máxima para a pesquisa das farmácias (em km).",textAlign: TextAlign.left,
                style: TextStyle(color: Color(0xFF999999),fontFamily: "Montserrat Medium",fontSize: 12),),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: SfSlider(
                min: 0.0,
                max: 60.0,
                value: controller.valueSlider,
                interval: 15,
                activeColor: Color(0xFF3C91E6),
                showTicks: true,
                showLabels: true,
                minorTicksPerInterval: 1,
                onChanged: controller.changeValueSlider
              ),
            )
          ],
        ),
      );
    });
  }
}
