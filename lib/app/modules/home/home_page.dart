import 'package:HealthBook/app/modules/medicine/medicine_module.dart';
import 'package:HealthBook/app/modules/patient_home/patient_home_module.dart';
import 'package:HealthBook/app/modules/profile/profile_module.dart';
import 'package:HealthBook/app/modules/home/componentes/drawers_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:HealthBook/app/modules/my_health/my_health_module.dart';
import 'package:HealthBook/app/utils/navigation_icons_icons.dart';
import 'package:HealthBook/app/utils/new_icons_icons.dart';
import 'package:tridimensional_drawer/tridimensional_drawer.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {

  List<Widget> tab;
  List<String> title;
  TridimensionalDrawerController drawerController = TridimensionalDrawerController();
  int _currentIndex;


  @override
  void initState() {
    tab=[
    RouterOutlet(module: PatientHomeModule(controller.pageController)),
    RouterOutlet(module: MyHealthModule()),
      Container(color: Colors.grey,),
    RouterOutlet(module: MedicineModule()),
      RouterOutlet(module: ProfileModule()),
    ];
    title = ["","Minhas Saúde","Consultas","Medicamentos","Perfil"];
    _currentIndex = controller.pageController.initialPage;
    controller.changeCurrentUser();
    super.initState();
  }

  @override
  void dispose() {
    drawerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Observer(builder: (context){
      if(controller.currentUser==null){
        return Scaffold(body: Center(
            child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)))
        );
      }

      return WillPopScope(
        onWillPop: () async{
          return false;
        },
        child: TridimensionalDrawer(
          backgroundPage: GestureDetector(
            onTap: () => drawerController.close(),
            child: Container(color: Colors.white),
          ),
          drawer: DrawersWidget(pageController: controller.pageController,currentUser: controller.currentUser,),
          controller: drawerController,
          mainPage: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                      radius: 10,
                    backgroundImage: NetworkImage('https://health.lanconi.com.br/uploads/${controller.currentUser.photo}')),
                ),
                actions: [IconButton(icon: Icon(Icons.menu),onPressed: ()=>drawerController.open(),)],
                centerTitle: true,
                iconTheme: new IconThemeData(color: Color(0xFF1fd6fb),size: 16),
                elevation: 0,
                backgroundColor: Colors.white,title: Text(title[_currentIndex],style: TextStyle(fontFamily: "Montserrat SemiBold",fontSize: 16,color: Colors.black),),),
              body: PageView(controller: controller.pageController,children: tab,physics: NeverScrollableScrollPhysics(),onPageChanged: (value){_currentIndex = value; setState(() {});}),
              bottomNavigationBar: FFNavigationBar(
                theme: FFNavigationBarTheme(
                  barBackgroundColor : Colors.white,
                  selectedItemBorderColor : Colors.white,
                  selectedItemBackgroundColor : Color(0xFF0F1B29),
                  selectedItemIconColor : Colors.white,
                  selectedItemLabelColor: Colors.black,
                  unselectedItemIconColor: Colors.black,
                  unselectedItemBackgroundColor: Colors.white,
                  unselectedItemLabelColor: Colors.white,
                ),

                selectedIndex: _currentIndex,
                onSelectTab: (index) {
                  controller.changePage(index);
                  _currentIndex = index;
                  setState(() {});
                },
                items: [
                  FFNavigationBarItem(
                    iconData: NewIcons.home,
                    label: '',
                  ),
                  FFNavigationBarItem(
                    iconData: NavigationIcons.icon1,
                    label: '',
                  ),
                  FFNavigationBarItem(
                    iconData: NavigationIcons.icon2,
                    label: '',
                  ),
                  FFNavigationBarItem(
                    iconData: NewIcons.pills,
                    label: '',
                  ),
                  FFNavigationBarItem(
                    iconData: NavigationIcons.icon3,
                    label: '',
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
