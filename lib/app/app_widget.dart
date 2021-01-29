import 'package:HealthBook/app/modules/medicine/medicine_controller.dart';
import 'package:HealthBook/app/services/provider_medicines_notes_service.dart';
import 'package:HealthBook/app/services/provider_notes_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<ProviderNotesService>(create: (_)=>ProviderNotesService(),
      child: MultiProvider(
        providers: [
          Provider<MedicineController>(create: (context)=> MedicineController()),
          Provider<ProviderMedicinesNotesService>(create: (context)=>ProviderMedicinesNotesService())
        ],
        child: MaterialApp(
          navigatorKey: Modular.navigatorKey,
          title: 'Health Book',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: Modular.initialRoute,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Modular.generateRoute,
        ),
      ),
    );
  }
}
