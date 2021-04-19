import 'package:flutter/material.dart';
import 'package:tecnocable/Models/TechnicalVisit.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';

class TechnicalVisitContainer extends StatelessWidget {
  TechnicalVisit item;

  TechnicalVisitContainer(this.item);

  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: GrayCardBackgroundColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(80.0),
            bottomLeft: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.12),
              offset: Offset(12.0, 12.0),
              blurRadius: 25.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: DarkBlueTextColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5.0),
                      bottomLeft: Radius.zero,
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.zero,
                    ),
                  ),
                  child: Container(
                      alignment: Alignment.center, child: Text(item.index)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  alignment: Alignment.center,
                  child: Image.asset(
                    item.imagePath,
                    fit: BoxFit.contain,
                    width: 150,
                  ),
                ),
              ],
            ),
            Container(
                width: 250,
                child: Text(item.text,
                    style: TextStyle(
                        color: DarkGrayTextColor,
                        fontFamily: 'Poppins',
                        fontSize: responsiveApp.sizeServiceList,
                        height: 1.5))),
          ],
        ));
  }
}
