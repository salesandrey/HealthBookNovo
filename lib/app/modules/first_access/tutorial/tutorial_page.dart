import 'package:HealthBook/app/modules/first_access/tutorial/componentes/tutorial_widget.dart';
import 'package:HealthBook/app/style/size_config.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'tutorial_controller.dart';

class TutorialPage extends StatefulWidget {
  final String title;
  const TutorialPage({Key key, this.title = "Tutorial"}) : super(key: key);

  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  //use 'controller' variable to access controller

  PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController=PageController(initialPage: 0);
    super.initState();
  }

  void pagechange(int index){
    currentIndex = index +1;
    if(currentIndex>2)
      Modular.to.pushReplacementNamed("/TermOfUse");
    pageController.animateToPage(currentIndex, duration: Duration(milliseconds: 400), curve: Curves.linear);
    setState(() {});
  }

  void backPage(int index){
    currentIndex = index - 1;
    pageController.animateToPage(currentIndex, duration: Duration(milliseconds: 400), curve: Curves.linear);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height = SizeConfig.screenHeight;
    var width = SizeConfig.screenWidth;
    var blockVertical = SizeConfig.blockSizeVertical;
    var blockHorizontal = SizeConfig.blockSizeHorizontal;
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading:currentIndex!=0?
      IconButton(icon: Icon(Icons.arrow_back_rounded,size: 30,color: Color(0xFFAAA79F),),onPressed: (){
        backPage(currentIndex);
      },):null,
      actions: [
        currentIndex< 3 ? Center(child: Padding(
        padding: const EdgeInsets.all(8.0),
          child: InkWell(onTap: (){
          Modular.to.pushReplacementNamed("/TermOfUse");},
            child: Text("Pular",
                style: TextStyle(
                    color: ColorsApp.lightGray,
                    fontSize: 18,
                    fontFamily: 'OpenSans-Regular'))),
      )):Container()]),
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width,
              height: blockVertical*50,
              // color: Colors.red,
              child: PageView(
                controller: pageController,
                children: [
                  TutorialWidget(title: '1. O registro da sua \nsaúde e dos seus \nfamiliares'),
                  TutorialWidget(title: '2. Consultas com profissionais'),
                  TutorialWidget(title: '3. Registro e compra de remédios'),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.45,
              height: blockVertical*5,
              margin: EdgeInsets.only(left: 40,right: 41),
              decoration: BoxDecoration(
                color: ColorsApp.dark,
                boxShadow: [
                  BoxShadow(
                    color: ColorsApp.lightBlue.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  onPressed: (){
                    pagechange(currentIndex);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          currentIndex==2?'VAMOS COMEÇAR':'PRÓXIMO',
                          style: TextStyle(
                              fontFamily: 'Montserrat SemiBold',
                              fontSize: 13,
                              color: Colors.white)),
                      SizedBox(width: blockHorizontal*3),
                      currentIndex==2?Container():Image.asset('assets/images/forward.png',height: 12,)
                ],
              )),
            ),
            SizedBox(height: blockVertical*7),

            SmoothPageIndicator(
                controller: pageController,
                count:  3,
                axisDirection: Axis.horizontal,
                effect:  ScrollingDotsEffect(
                    dotHeight: 5,dotWidth: 5,fixedCenter: true,
                    dotColor: ColorsApp.lightGray,activeDotColor: ColorsApp.gray,
                    spacing: 20,
                    activeDotScale: 2,
                    activeStrokeWidth: 2
                ),  // your preferred effect
                onDotClicked: (index){
                }
            )
          ],
        ),
      ),
    );
  }
}
