import 'package:HealthBook/app/modules/home/componentes/drawers_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'medi_appointment_controller.dart';

class MediAppointmentPage extends StatefulWidget {
  final String title;
  const MediAppointmentPage({Key key, this.title = "MediAppointment"})
      : super(key: key);

  @override
  _MediAppointmentPageState createState() => _MediAppointmentPageState();
}

class _MediAppointmentPageState
    extends ModularState<MediAppointmentPage, MediAppointmentController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25,bottom: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.all(0),
                        child: Align(
                          alignment: Alignment.center,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText:"Search",
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.search),
                              contentPadding: EdgeInsets.only(top: 15,left: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex:4,
                          child: Container(
                            height: 50,
                            color: Colors.white,
                            child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              margin: EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.radio,color: Colors.grey,),
                                  Text("Data do consulta",style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 50,
                            color: Colors.white,
                            child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              margin: EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.access_alarms,color: Colors.grey,),
                                  Text("Horario",style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin:EdgeInsets.only(top: 40,bottom: 20),
                      height: 43,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: FlatButton(
                        onPressed: (){},
                        shape: StadiumBorder(),
                        child: Text("BUSCAR",style: TextStyle(color: Colors.grey[300]),),
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  Listitem(textitm:'23',Month:'OUT',year:'2020',),
                  SizedBox(height: 20,),
                  Listitem(textitm:'19',Month:'OUT',year:'2020',),
                  SizedBox(height: 20,),
                  Listitem(textitm:'19',Month:'OUT',year:'2020',),
                  SizedBox(height: 20,),
                  Listitem(textitm:'04',Month:'OUT',year:'2020',),
                  SizedBox(height: 20,),
                  Listitem(textitm:'09',Month:'OUT',year:'2020',),
                  SizedBox(height: 10,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Listitem extends StatelessWidget {
  Listitem({this.textitm,this.Month,this.year,});
  final textitm;
  final Month;
  final year;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: 200,
      color: Colors.grey[100],
      child: Row(
        children: [
          Container(
            width: 100,
            height: 180,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(textitm,style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold,)),
                Text(Month,style: TextStyle(color: Colors.grey[700],fontSize: 14,fontWeight: FontWeight.bold),),
                Text(year,style: TextStyle(color: Colors.grey,fontSize: 16,),),

              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 15),
                  child: FittedBox(child: Text('Nome da clinica ou nome do\nprofissional',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,height: 1.5),maxLines: 2,overflow: TextOverflow.ellipsis,softWrap: true,))),
              Container(
                margin: EdgeInsets.only(top: 15),
                child:FittedBox(
                    child:Text('Dr. Nome Sobrenome',style:TextStyle(fontWeight:FontWeight.bold,color: Colors.grey[600] ),)),),
              Container(
                  margin: EdgeInsets.only(top: 5),
                  child: FittedBox(child: Text('ESPECIALDADE',style: TextStyle(color: Colors.lightBlue),))),
              Container(
                margin:EdgeInsets.only(top: 10),
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FlatButton(
                  onPressed: ()
                  {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) {return MedAppPro();}));
                  },
                  shape: StadiumBorder(),
                  child: FittedBox(child: Text("MARCAR NOVAMENTE",style: TextStyle(color: Colors.grey[300],fontSize: 12),)),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
