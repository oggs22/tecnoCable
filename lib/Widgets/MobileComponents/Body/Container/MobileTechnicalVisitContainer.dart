import 'package:flutter/material.dart';
import 'package:tecnocable/Models/TechnicalVisit.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';

class MobileTechnicalVisitContainer extends StatelessWidget {
  TechnicalVisit item;

  MobileTechnicalVisitContainer(this.item);

  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        height: responsiveApp.technicalVisionContainerCardHeight * 0.85,
        width: responsiveApp.technicalVisionContainerCardWidth * 0.6,
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
                      alignment: Alignment.center,
                      child: Text(item.index,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ))),
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
                width: responsiveApp.technicalVisionContainerCardWidth * 0.45,
                child: Text(item.text,
                    style: TextStyle(
                        color: DarkGrayTextColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: responsiveApp.sizeServiceList,
                        height: 1.5))),
          ],
        ));
  }
}
