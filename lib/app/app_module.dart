import 'package:HealthBook/app/modules/first_access/term_of_use/privacy_policy_page.dart';
import 'package:HealthBook/app/modules/first_access/term_of_use/term_of_use_page.dart';
import 'package:HealthBook/app/modules/list_dependent/list_dependent_module.dart';
import 'package:HealthBook/app/modules/profile_edit/profile_edit_module.dart';
import 'package:HealthBook/app/modules/register_family/register_family_module.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:HealthBook/app/app_widget.dart';
import 'modules/splash/splash_module.dart';
import 'modules/first_access/first_access_controller.dart';
import 'modules/first_access/first_access_module.dart';
import 'modules/first_access/tutorial/tutorial_page.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';
import 'modules/register/register_module.dart';
import 'modules/register_family/register_family_page.dart';
import 'modules/reset_password/reset_password_module.dart';
import 'modules/data_register/data_register_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind((i) => FirstAccessController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashModule()),
        ModularRouter("/ProfileEdit",module: ProfileEditModule()),
        ModularRouter("/FirstAccess", module: FirstAccessModule()),
        ModularRouter("/Home", module: HomeModule()),
        ModularRouter("/Login", module: LoginModule()),
        ModularRouter("/ResetPassword", module: ResetPasswordModule()),
        ModularRouter("/Register", module: RegisterModule()),
        ModularRouter('/Tutorial', child: (_, args) => TutorialPage()),
        ModularRouter("/RegisterData", module: DataRegisterModule()),
        ModularRouter('/TermOfUse', child: (_, args) => TermOfUsePage()),
        ModularRouter('/RegisterFamily', module: RegisterFamilyModule()),
        ModularRouter("/ListDependent", module: ListDependentModule()),
        ModularRouter("/RegisterMember",
            child: (_, args) => RegisterFamilyPage()),
        ModularRouter('/PrivacyPolicy',
            child: (_, args) => PrivacyPolicyPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
