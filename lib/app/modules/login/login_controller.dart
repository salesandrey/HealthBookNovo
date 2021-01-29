import 'package:HealthBook/app/interfaces/local_storage_interface.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/modules/login/viewmodel/navigation_viewmodel.dart';
import 'package:HealthBook/app/repositories/auth_repository.dart';
import 'package:HealthBook/app/repositories/facebook_repository.dart';
import 'package:HealthBook/app/repositories/google_repository.dart';
import 'package:HealthBook/app/repositories/patient_repository.dart';
import 'package:HealthBook/app/services/biometrics_service.dart';
import 'package:HealthBook/app/services/provider_notes_service.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ILocalStorage storage = SharedLocalStorageService();

  @observable
  bool isConnect = false;

  @action
  void changeIsConnect(bool value){
    isConnect = value;
  }

  @observable
  String email="";

  @observable
  String emailFeedBack = "";

  @observable
  bool emailValidator = false;

  @observable
  String password="";

  @observable
  String passwordFeedBack="";

  @observable
  bool passwordValidator = false;

  @observable
  bool visibility = false;

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @action
  void changeEmail(String value){
    email = value;
  }

  @action
  void changePassword(String value){
    password = value;
  }

  @action
  void changeVisibility(bool value){
    visibility = value;
  }

  @action
  void updateEmailFeedBack(String value){
    emailFeedBack = value;
  }

  @action
  void changeEmailValidator(bool value){
    emailValidator = value;
  }

  @action
  void updatePasswordFeedBack(String value){
    passwordFeedBack = value;
  }

  @action
  void changePasswordValidator(bool value){
    passwordValidator = value;
  }

  Future<void> loginEmailPassword(BuildContext context) async {
    changeLoading(true);
    dynamic response = await AuthRepository().login(email, password, context);
    UserModel data = await PatientRepository().get(email);
    changeLoading(false);
    if(response==null){
     updateEmailFeedBack("Falha ao conectar ao servidor");
     changeEmailValidator(true);
    }else{
      switch (response["msg"]) {
        case "Sessão iniciada com sucesso":
          storage.put("isConnect", isConnect);
          storage.put("email", email);
          storage.put("password",password);
          storage.put("name",data.name);
          storage.put("cpf",data.cpf);
          storage.put("id",data.id);
          if(data.bloodgroup=="")
            {
              Modular.to.pushReplacementNamed("/RegisterData");
            }
          else {
            Modular.to.pushReplacementNamed("/Home");
          }
          break;
        case "Usuário ou senha inválidos":
          updatePasswordFeedBack("Usuário ou senha inválidos");
          showDialog(context:context,builder:(BuildContext context){return AlertDialog(title: Text(response["msg"]));});
          changePasswordValidator(true);
          break;
        case "Conta temporariamente bloqueada. Tente novamente mais tarde":
          updatePasswordFeedBack(
              "Conta temporariamente bloqueada. Tente novamente mais tarde");
          showDialog(context:context,builder:(BuildContext context){return AlertDialog(title: Text(response));});
          changePasswordValidator(true);
          break;
      }
    }

  }

  Future<void> loginFacebook(BuildContext context) async{
      await FacebookRepository().login(context);
      Provider.of<ProviderNotesService>(context,listen: false).saveTypeServiceLogin("facebook");
      UserModel data = await PatientRepository().get(Provider.of<ProviderNotesService>(context,listen: false).profile["email"]);
      if(data!=null){
        storage.put("email", data.email);
      }
      NavigationViewModel().checkLoginData(data);
  }
  Future<void> loginGoogle(BuildContext context) async{
    await GoogleRepository().login(context);
    Provider.of<ProviderNotesService>(context,listen: false).saveTypeServiceLogin("google");
    UserModel data = await PatientRepository().get(Provider.of<ProviderNotesService>(context,listen: false).profile["email"]);
    if(data!=null){
      storage.put("email", data.email);
    }
    NavigationViewModel().checkLoginData(data);
  }

  @action
  Future<void> loginFaceID(BuildContext context) async {
    bool authenticaded = await AuthBiometricsService().checkAvailableFaceID(context);
    bool containsPassword = await storage.contains("password");
    bool containsEmail = await storage.contains("email");
    if (authenticaded) {
      if (containsPassword && containsEmail) {
        final value1 = await storage.get("email");
        final value2 = await storage.get("password");
        changeEmail(value1);
        changePassword(value2);
        loginEmailPassword(context);
      } else {
        showDialog(context: context,builder: (context){
          return AlertDialog(
              elevation: 5,
              title: Text("Email e Senha não registrados no Dispositivo",
              style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 16),
                  textAlign: TextAlign.center),
              content: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.20,
                  child: Column(
                      children: [
                        TextField(
                            onChanged: changeEmail,
                            decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)))),
                        SizedBox(height: 10,),
                        TextField(onChanged: changePassword, decoration: InputDecoration(
                            hintText: "Senha",
                            prefixIcon: Icon(Icons.vpn_key),
                            suffixIcon: IconButton(icon: Icon(Icons.arrow_forward),onPressed: (){
                              storage.put("email",email);
                              storage.put("password", password);
                              loginEmailPassword(context);}),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ))])));});
      }
    }
  }

  @action
  Future<void> loginFingerPrint(BuildContext context) async {
    bool authenticaded = await AuthBiometricsService().checkAvailableFingerPrint(context);
    bool containsEmail = await storage.contains("email");
    bool containsPassword = await storage.contains("password");
    if (authenticaded) {
      if (containsPassword && containsEmail) {
        final value1 = await storage.get("email");
        final value2 = await storage.get("password");
        changeEmail(value1);
        changePassword(value2);
        loginEmailPassword(context);
      }
      else {
        showDialog(context: context,builder: (context){
          return AlertDialog(
              elevation: 5,
              title: Text("Email e Senha não registrados no Dispositivo",
                  style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 16),
                  textAlign: TextAlign.center),
              content: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.20,
                  child: Column(
                      children: [
                        TextField(
                            onChanged: changeEmail,
                            decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)))),
                        SizedBox(height: 10,),
                        TextField(onChanged: changePassword, decoration: InputDecoration(
                            hintText: "Senha",
                            prefixIcon: Icon(Icons.vpn_key),
                            suffixIcon: IconButton(icon: Icon(Icons.arrow_forward),onPressed: (){
                              storage.put("email",email);
                              storage.put("password", password);
                              loginEmailPassword(context);}),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)
                            )
                        ))])));});}}
  }
}
