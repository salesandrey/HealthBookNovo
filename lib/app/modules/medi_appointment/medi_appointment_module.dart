import 'medi_appointment_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'medi_appointment_page.dart';

class MediAppointmentModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $MediAppointmentController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => MediAppointmentPage()),
      ];

  static Inject get to => Inject<MediAppointmentModule>.of();
}
