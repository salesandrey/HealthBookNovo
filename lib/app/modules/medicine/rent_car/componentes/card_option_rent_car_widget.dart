import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';


class CardOptionRentCarWidget extends StatelessWidget {
  
  final String imagePath;
  final String title;
  final Function navigation;

  const CardOptionRentCarWidget({Key key, 
    @required this.imagePath, 
    @required this.title, 
    this.navigation}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigation,
      child: Container(
        height: 100,
        child: Column(
          children: [
            Card(
              elevation: 3,
              margin: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.only(right: 10),
                height: 94,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Transform.scale(scale: 0.5,child: Image.asset(imagePath))
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        child: Text(
                          title,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Montserrat Medium",
                              color: ColorsApp.KBlackColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
