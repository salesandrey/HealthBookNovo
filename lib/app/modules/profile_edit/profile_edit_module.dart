import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/modules/profile_edit/add_address/add_address_controller.dart';
import 'package:HealthBook/app/modules/profile_edit/add_address/add_address_page.dart';
import 'package:HealthBook/app/modules/profile_edit/add_emergency_contact/add_emergency_contact_controller.dart';
import 'package:HealthBook/app/modules/profile_edit/add_emergency_contact/add_emergency_contact_page.dart';
import 'package:HealthBook/app/modules/profile_edit/address/address_controller.dart';
import 'package:HealthBook/app/modules/profile_edit/address/address_page.dart';
import 'package:HealthBook/app/modules/profile_edit/configurations/configurations_controller.dart';
import 'package:HealthBook/app/modules/profile_edit/configurations/configurations_page.dart';
import 'package:HealthBook/app/modules/profile_edit/emergency_contact/emergency_contact_controller.dart';
import 'package:HealthBook/app/modules/profile_edit/emergency_contact/emergency_contact_page.dart';
import 'package:HealthBook/app/modules/profile_edit/geolocation_configuration/geolocation_configuration_controller.dart';
import 'package:HealthBook/app/modules/profile_edit/geolocation_configuration/geolocation_configuration_page.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';
import 'profile_edit_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'profile_edit_page.dart';

class ProfileEditModule extends ChildModule {

  @override
  List<Bind> get binds => [
        Bind((i) => SharedLocalStorageService()),
        Bind((i)=>ProfileEditController(storage: i.get<SharedLocalStorageService>())),
        Bind((i)=> ConfigurationsController(storage: i.get<SharedLocalStorageService>())),
        Bind((i)=>GeolocationConfigurationController(valueSlider: i.get<ConfigurationsController>().geolocation,storage: i.get<SharedLocalStorageService>())),
        $EmergencyContactController,
        $AddAddressController,
        Bind((i) => AddressController(idUser: i.get<ProfileEditController>().currentUser.id)),
        $AddEmergencyContactController,
      ];

  @override
  List<ModularRouter> get routers => [

        ModularRouter(Modular.initialRoute, child: (_, args) => ProfileEditPage()),
        ModularRouter("/AddEmergencyContact", child: (_, args) => AddEmergencyContactPage(userID: args.data,)),
        ModularRouter("/EmergencyList", child: (_, args) => EmergencyContactPage(userID: args.data)),
        ModularRouter("/Configurations", child: (_, args) => ConfigurationsPage()),
        ModularRouter("/Address", child: (_, args) => AddressPage()),
        ModularRouter("/AddAddress", child: (_, args) => AddAddressPage(userID: args.data,)),
        ModularRouter("/GeolocationConfiguration", child: (_,args)=> GeolocationConfigurationPage())
      ];

  static Inject get to => Inject<ProfileEditModule>.of();
}
