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
      height: 250,
      width: 250,
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
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Text(item.index),
          Image.asset(item.imagePath),
          Text(item.text)
        ],
      ),
    );
  }
}
