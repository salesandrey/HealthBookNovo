import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/modules/profile_edit/componentes/blood_type_widget.dart';
import 'package:HealthBook/app/modules/profile_edit/componentes/textfield_edit_profile_widget.dart';
import 'package:HealthBook/app/modules/profile_edit/componentes/tile_action_widget.dart';
import 'package:HealthBook/app/modules/profile_edit/componentes/user_photo_edit_widget.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:brasil_fields/formatter/telefone_input_formatter.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'profile_edit_controller.dart';
import 'viewmodel/edit_viewmodel.dart';

class ProfileEditPage extends StatefulWidget {

  @override
  _ProfileEditPageState createState() => _ProfileEditPageState();
}

class _ProfileEditPageState
    extends ModularState<ProfileEditPage, ProfileEditController> {


  TextEditingController cellphone;
  TextEditingController phone;
  TextEditingController neighborn;
  TextEditingController address;
  TextEditingController city;
  TextEditingController district;
  TextEditingController numberHouse;
  TextEditingController complement;
  TextEditingController bloodGroup;
  TextEditingController operator;
  TextEditingController numberCard;


  Future<void> loading() async{
    await controller.getCurrentUser();
    cellphone = TextEditingController(text: controller.currentUser.mobilenumber);
    phone = TextEditingController(text: controller.currentUser.phone);
    neighborn = TextEditingController(text: controller.currentUser.neigh);
    address = TextEditingController(text: controller.currentUser.address);
    city = TextEditingController(text: controller.currentUser.city);
    district = TextEditingController(text: controller.currentUser.district);
    numberHouse = TextEditingController(text: controller.currentUser.addressnumber);
    complement = TextEditingController(text: controller.currentUser.address2);
    bloodGroup = TextEditingController(text: controller.currentUser.bloodgroup);
    operator = TextEditingController(text: controller.healthPlane[0].name);
    numberCard = TextEditingController(text: controller.healthPlane[0].number);
    controller.changeOperation(controller.healthPlane[0].name);
    controller.changeNumberCard(controller.healthPlane[0].number);
    bool conectSus = controller.healthPlane[0].sus=="1" ? true : false;
    bool havePlane = controller.healthPlane[0].name=="" ? false: true;
    controller.changeConnectSUS(conectSus);
    controller.changeHaveHealthPlane(havePlane);
    controller.changeCity(city.text);
    controller.changeBloodGroup(controller.currentUser.bloodgroup);
    controller.changeAddress(address.text);
    controller.changeNeighborhood(neighborn.text);
    controller.changeNumberHouse(numberHouse.text);
    controller.changePhone(phone.text);
    controller.changeCellphone(cellphone.text);
    controller.changeComplement(complement.text);
    controller.changeUf(district.text);
    controller.changeBloodGroup(controller.currentUser.bloodgroup);
    controller.createDiseaseTile();

  }



  @override
  void initState() {
    loading();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder:(context) {
    if(controller.currentUser==null ||
        controller.diseases==null||
        controller.healthPlane==null){
      return Scaffold(body: Center(
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)))
      );
    }
      return ModalProgressHUD(
        inAsyncCall: controller.loading,
        child: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          appBar: AppBar(
            elevation: 1,
            backgroundColor: ColorsApp.KPrimaryColor,
            leading: IconButton(
              onPressed: () {
                Modular.to.pushReplacementNamed("/Home");
              },
              icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
            ),
            title: Text(
              "Meu Perfil",
              style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
            ),
            centerTitle: true,
          ),
          body: Builder(
            builder:(c) => SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 45,),
                  UserPhotoEditWidget(
                    image: controller.currentUser.photo,
                    currentImage: controller.currentImage,
                    takePicture: controller.takePicture,
                    useFromGallery: controller.takeFromGallery,
                    nameUser: controller.currentUser.name,
                  ),
                  SizedBox(height: 46),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child:Column(
                        children: [
                          TileActionWidget(title: "Configurações",icon: Icons.settings,navigator: (){
                            Navigator.of(context).pushNamed("/ProfileEdit/Configurations",arguments: controller.currentUser.id);
                          }),
                          SizedBox(height: 10),
                          TileActionWidget(title: "Contatos de emergência",icon: Icons.person_add,navigator: (){
                            Navigator.of(context).pushNamed("/ProfileEdit/EmergencyList",arguments: controller.currentUser.id);
                          }),
                          SizedBox(height: 20),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,borderRadius: BorderRadius.circular(7)
                              ),
                              child: Theme(
                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent,unselectedWidgetColor:Colors.white,accentColor: Colors.white),
                                child: ExpansionTile(
                                  title: Text("Informações Geral",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: "Montserrat Medium")),
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 18),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                    width:100,
                                                    child: TextFieldEditProfileWidget(
                                                        onChanged: controller.changeCellphone,
                                                        controller: cellphone,
                                                        keyboard: TextInputType.number,
                                                        mask: [
                                                          FilteringTextInputFormatter.digitsOnly,
                                                          TelefoneInputFormatter(),
                                                          LengthLimitingTextInputFormatter(15),],
                                                        hintText: "Celular",
                                                        imageIcon: "assets/images/icons/cell.png")),
                                              ),
                                              SizedBox(width: 10),
                                              Expanded(
                                                child: Container(
                                                    width: 100,
                                                    child: TextFieldEditProfileWidget(
                                                        onChanged: controller.changePhone,
                                                        controller: phone,
                                                        keyboard:TextInputType.number,
                                                        mask: [
                                                          FilteringTextInputFormatter.digitsOnly,
                                                          TelefoneInputFormatter(),
                                                          LengthLimitingTextInputFormatter(14),
                                                        ],
                                                        hintText: "Residencial",
                                                        imageIcon: "assets/images/icons/phone.png")),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 18),
                                          TextFieldEditProfileWidget(
                                              onChanged: controller.changeAddress,
                                              controller: address,
                                              hintText: "Endereço",imageIcon: "assets/images/icons/location.png"),
                                          SizedBox(height: 18),
                                          TextFieldEditProfileWidget(
                                              onChanged: controller.changeNeighborhood,
                                              controller: neighborn,
                                              hintText: "Bairro",imageIcon: "assets/images/icons/map.png"),
                                          SizedBox(height: 18),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                    width:100,
                                                    child: TextFieldEditProfileWidget(
                                                        onChanged: controller.changeCity,
                                                        controller: city,
                                                        hintText: "Cidade",imageIcon: "assets/images/icons/city.png")),
                                              ),
                                              SizedBox(width: 10),
                                              Expanded(
                                                  child: TextFieldEditProfileWidget(
                                                      onChanged: controller.changeUf,
                                                      controller: district,
                                                      hintText: "UF",imageIcon: "assets/images/icons/brazil.png"))

                                            ],
                                          ),
                                          SizedBox(height: 18),
                                          Row(
                                            children: [
                                              Expanded(
                                                flex:3,
                                                child: Container(
                                                    width:100,
                                                    child: TextFieldEditProfileWidget(
                                                        onChanged: controller.changeNumberHouse,
                                                        controller: numberHouse,
                                                        hintText: "Nº",imageIcon: "assets/images/icons/home.png")),
                                              ),
                                              SizedBox(width: 10),
                                              Expanded(
                                                flex: 7,
                                                child: Container(
                                                    width: 100,
                                                    child: TextFieldEditProfileWidget(
                                                        onChanged: controller.changeComplement,
                                                        controller: complement,
                                                        hintText: "Complemento",imageIcon: "assets/images/icons/location.png")),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 20)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          SizedBox(height: 20),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,borderRadius: BorderRadius.circular(7)
                              ),
                              child: Theme(
                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent,unselectedWidgetColor:Colors.white,accentColor: Colors.white),
                                child: ExpansionTile(
                                  title: Text("Minha Saúde",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: "Montserrat Medium")),
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 24),
                                          Container(child: Text("Tipo Sanguíneo",style: TextStyle(fontSize: 14,fontFamily: "Montserrat SemiBold",color: Colors.black))),
                                          SizedBox(height: 18),
                                          BloodTypeWidget(
                                              currentSelection: controller.bloodGroup,
                                              changeType: controller.changeBloodGroup),
                                          SizedBox(height: 60),
                                          Container(child: Text("Doenças Crônicas",style: TextStyle(fontSize: 14,fontFamily: "Montserrat SemiBold",color: Colors.black))),
                                          SizedBox(height: 37),
                                          Wrap(children: controller.diseasesTile),
                                          SizedBox(height: 60),
                                          Container(child: Text("Possui Conecte SUS?",style: TextStyle(fontSize: 14,fontFamily: "Montserrat SemiBold",color: Colors.black))),
                                          SizedBox(height: 29),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Transform.scale(
                                                scale:0.9,
                                                child: Observer(
                                                  builder: (_){
                                                    return CupertinoSwitch(
                                                        value: controller.connectSUS,
                                                        activeColor: Color(0xFFF0EFF4),
                                                        trackColor: Color(0xFFF0EFF4),
                                                        onChanged: controller.changeConnectSUS
                                                    );
                                                  }
                                                ),
                                              ),
                                              SizedBox(width: 9,),
                                              Text(controller.connectSUS?"Possuo":"Não possuo",style: TextStyle(color: Colors.black,fontFamily: "Montserrat Medium"),)
                                            ],
                                          ),
                                          SizedBox(height: 60),
                                          Container(child: Text("Possui Plano de Saúde?",style: TextStyle(fontSize: 14,fontFamily: "Montserrat SemiBold",color: Colors.black))),
                                          SizedBox(height: 29),
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.black,borderRadius: BorderRadius.circular(7)
                                              ),
                                              child: Theme(
                                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent,unselectedWidgetColor:Colors.white,accentColor: Colors.white),
                                                child: ExpansionTile(
                                                  onExpansionChanged: controller.changeHaveHealthPlane,
                                                  maintainState: controller.haveHealthPlane,
                                                  tilePadding: EdgeInsets.symmetric(horizontal: 10),
                                                  leading: Transform.scale(
                                                    scale: 0.9,
                                                    child: Observer(
                                                      builder: (_) {
                                                        return CupertinoSwitch(
                                                            value: controller.haveHealthPlane,
                                                            activeColor: Color(0xFFF0EFF4),
                                                            trackColor: Color(0xFFF0EFF4),
                                                            onChanged: controller.changeHaveHealthPlane
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  title: Text(controller.haveHealthPlane?"Possuo":"Não Possuo",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontFamily: "Montserrat Medium")),
                                                  children: [
                                                    Container(
                                                      color: Colors.white,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(color:Colors.white,child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [

                                                                SizedBox(height: 38),
                                                                Container(child: Text("Nome da operadora",style: TextStyle(fontSize: 14,fontFamily: "Montserrat SemiBold",color: Colors.black))),
                                                                SizedBox(height: 30),
                                                                TextFieldEditProfileWidget(
                                                                    onChanged: controller.changeOperation,
                                                                    controller: operator,
                                                                    hintText: "Operadora",imageIcon: "assets/images/icons/operation.png"),
                                                                SizedBox(height: 38),
                                                                Container(child: Text("Número da carteirinha",style: TextStyle(fontSize: 14,fontFamily: "Montserrat SemiBold",color: Colors.black))),
                                                                SizedBox(height: 30),
                                                                TextFieldEditProfileWidget(
                                                                    onChanged: controller.changeNumberCard,
                                                                    controller: numberCard,
                                                                    hintText: "N:",imageIcon: "assets/images/icons/number_card.png"),
                                                                SizedBox(height: 38),
                                                                Container(child: Text("Foto da carteirinha",style: TextStyle(fontSize: 14,fontFamily: "Montserrat SemiBold",color: Colors.black))),
                                                                SizedBox(height: 27),
                                                                InkWell(
                                                                  onTap: () async{
                                                                    await controller.changeCardFile();
                                                                    setState(() {});
                                                                  },
                                                                  child: controller.healthPlane[0].name== "" && controller.cardFile==null? DottedBorder(
                                                                      borderType: BorderType.RRect,
                                                                      radius: Radius.circular(8),
                                                                      color: ColorsApp.KTertiaryColor,
                                                                      dashPattern: [8, 8, 8, 8],
                                                                      child: Container(
                                                                        alignment: Alignment.center,
                                                                        height: 176,
                                                                        child: Column(
                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                          children: [
                                                                            Container(
                                                                              height:52,
                                                                              child: Image(
                                                                                image: AssetImage('assets/images/Grupo 3811@3x.png'),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              margin: const EdgeInsets.only(top: 20),
                                                                              child: Text(
                                                                                "envie uma imagem\ndo seu dispositivo",
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(
                                                                                    height: 2,
                                                                                    fontSize: 14,
                                                                                    color: Color(0xffA4A4A4),fontFamily: "Montserrat Regular"),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      )
                                                                  ):controller.cardFile==null?
                                                                  Container(
                                                                      height: 176,
                                                                      alignment: Alignment.center,
                                                                      decoration: BoxDecoration(
                                                                          image: DecorationImage(
                                                                              image: NetworkImage('https://health.lanconi.com.br/uploads/${controller.healthPlane[0].photo}'),
                                                                              fit: BoxFit.cover))):
                                                                  Container(
                                                                      height: 176,
                                                                      alignment: Alignment.center,
                                                                      decoration: BoxDecoration(
                                                                          image: DecorationImage(
                                                                              image: FileImage(controller.cardFile),
                                                                              fit: BoxFit.cover)))
                                                                  ,
                                                                ),
                                                                SizedBox(height: 40),

                                                              ]))
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          SizedBox(height: 60,),
                          MaterialButton(
                              minWidth: MediaQuery.of(context).size.width * 0.4,
                              height: 45,
                              shape: StadiumBorder(),
                              elevation: 0,
                              color: Colors.black,
                              child: Text("SALVAR",style: TextStyle(fontSize: 13,color: Colors.white,fontFamily: "Montserrat SemiBold"),),
                              onPressed: () async {

                                if(EditViewModel().validateFields(c, controller)) {
                                  controller.changeLoading(true);
                                  await controller.saveData();
                                  controller.changeLoading(false);
                                  Modular.to.pushReplacementNamed("/Home");
                                }
                              }),
                          SizedBox(height: 60,),
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
