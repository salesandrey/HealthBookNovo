


import 'package:intl/intl.dart';

class TimeConvert{


  String convertTimeToString(String time){
    final format = DateFormat("dd/MM/yyyy");
    final dateFinal = format.parse(time);
    var formattedDate = "${dateFinal.year}-${dateFinal.month}-${dateFinal.day}";
    return formattedDate;
  }

  DateTime convertStringBrazilToDateTime(String time){
    final format = DateFormat("dd/MM/yyyy");
    final dateFinal = format.parse(time);
    return dateFinal;
  }

  String convertTimeToStringBrazilFormat(DateTime time){
    final format = DateFormat("dd/MM/yyyy");
    String date = format.format(time);
    return date;
  }

  String convertStringDataBaseToApk(String time){
    final format = DateFormat("yyyy-MM-dd");
    final dateFinal = format.parse(time);
    var formattedDate = "${dateFinal.day}/${dateFinal.month}/${dateFinal.year}";
    return formattedDate;
  }

  String convertTimeToDataBase(DateTime time){
    var formattedDate = "${time.year}-${time.month}-${time.day}";
    return formattedDate;
  }


}