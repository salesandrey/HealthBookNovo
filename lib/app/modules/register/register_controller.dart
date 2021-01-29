import 'package:HealthBook/app/interfaces/local_storage_interface.dart';
import 'package:HealthBook/app/modules/register/components/register_success_widget.dart';
import 'package:HealthBook/app/repositories/auth_repository.dart';
import 'package:HealthBook/app/repositories/patient_repository.dart';
import 'package:HealthBook/app/services/biometrics_service.dart';
import 'package:HealthBook/app/services/shared_local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:HealthBook/app/models/user_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
part 'register_controller.g.dart';


@Injectable()
class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {

  ILocalStorage storage = SharedLocalStorageService();

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading =value;
  }


  @observable
  int selectOption = 1;

  @action
  void changeSelectOption(int value){
    selectOption = value;
  }

  @observable
  String name;

  @observable
  String nameFeedback;

  @observable
  bool nameValidator = false;

  @observable
  String email;

  @observable
  String emailFeedback;

  @observable
  bool emailValidator = false;

  @observable
  String cpf;

  @observable
  String cpfFeedback;

  @observable
  bool cpfValidator = false;

  @observable
  String password;

  @observable
  String passwordFeedback;

  @observable
  bool passwordValidator = false;

  @action
  void changeName(String value){
    name = value;
  }
  @action
  void changeEmail(String value){
    email = value;
  }
  @action
  void changeCPF(String value){
    cpf = value;
  }
  @action
  void changePassword(String value){
    password = value;
  }

  @action
  void changeNameFeedback(String value){
    nameFeedback = value;
  }
  @action
  void changeEmailFeedback(String value){
    emailFeedback = value;
  }
  @action
  void changeCPFFeedback(String value){
    cpfFeedback = value;
  }
  @action
  void changePasswordFeedback(String value){
    passwordFeedback = value;
  }

  @action
  void changeNameValidator(bool value){
    nameValidator = value;
  }
  @action
  void changeEmailValidator(bool value){
    emailValidator = value;
  }
  @action
  void changeCPFValidator(bool value){
    cpfValidator = value;
  }
  @action
  void changePasswordValidator(bool value){
    passwordValidator = value;
  }


  Future<void> registerData(BuildContext context) async{

    changeLoading(true);
    UserModel model = UserModel(
        id: "",
        name: name,
        username: name,
        email: email,
        password: password,
        cpf: cpf,
        birthdate: null,
        sex: "",
        bloodgroup: "",
        photo: "",
        docphoto1: "",
        docphoto2: "",
        mobilenumber: "",
        phone: "",
        cep: "",
        address: "",
        address2: "",
        addressnumber: "",
        neigh: "",
        city: "",
        district: "",
        active: "");

    dynamic patient = await PatientRepository().insert(model);
    changeLoading(false);
      if (patient["msg"] == "Paciente adicionado com sucesso") {
        storage.put("name", name);
        storage.put("password", password);
        storage.put("cpf", cpf);
        storage.put("email", email);
        storage.put("id",patient["data"]["id"]);

        showModalBottomSheet(
            enableDrag: false,
            isScrollControlled: false,
            isDismissible: false,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0))),
            context: context,
            builder: (BuildContext context){
              return RegisterSuccessWidget();
            });
      }else{
      }
  }




  void loginFaceID(BuildContext context) async {
   bool isRegister = await AuthBiometricsService().checkAvailableFaceID(context);
   if(isRegister){
     loginEmailPassword(context);
   }
  }
  void loginFingerPrint(BuildContext context) async {
    bool isRegister = await AuthBiometricsService().checkAvailableFingerPrint(context);
    if(isRegister){
      loginEmailPassword(context);
    }
  }
  Future<void> loginEmailPassword(BuildContext context) async {
    changeLoading(true);
    await AuthRepository().login(email, password, context);
    changeLoading(false);
    Modular.to.pushReplacementNamed("/RegisterData");
  }


}
