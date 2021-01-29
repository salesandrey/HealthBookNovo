import 'package:HealthBook/app/models/user_model.dart';
import 'package:HealthBook/app/modules/home/componentes/drawer_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DrawersWidget extends StatefulWidget
{
  final PageController pageController;
  final UserModel currentUser;

  const DrawersWidget({Key key, this.pageController, this.currentUser}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState(pageController: pageController,currentUser: currentUser);
}

class _DrawerWidgetState extends State<DrawersWidget> {

  final PageController pageController;
  final UserModel currentUser;

  _DrawerWidgetState( {this.pageController,this.currentUser,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/2.4),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.black,radius: 25,backgroundImage: NetworkImage('https://health.lanconi.com.br/uploads/${currentUser.photo}'),),
                      SizedBox(width: 10,),
                      Text("${currentUser.name.split(" ").first} ${currentUser.name.split(" ").last}",style: TextStyle(color: Colors.black,fontSize: 16,fontFamily: "Montserrat Medium")),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                      child: Divider(color: Color(0xFF999999))),
                  SizedBox(height: 20),
                  DrawerOption(title: "Home",select: true,),
                  DrawerOption(title: "Odontológia",select: false),
                  DrawerOption(title: "Meus Pets",select: false,),
                  DrawerOption(title: "Tutorial",select: false,),
                  DrawerOption(title: "Contato",select: false,),
                  DrawerOption(title: "Tutorial",select: false,),
                  DrawerOption(title: "Notificação",select: false,),

                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}