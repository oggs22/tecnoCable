import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';

class ExplanationText extends StatelessWidget {
  ExplanationText(
      {Key key, this.titleText, this.costText, this.explanationText})
      : super(key: key);

  final String titleText, costText, explanationText;

  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(titleText,
          style: TextStyle(
              color: DarkGrayTextColor,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: responsiveApp.sizeServiceList,
              height: 1.5)),
      Text(costText,
          style: TextStyle(
              color: backgroundPinkColor,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: responsiveApp.sizeServiceList,
              height: 1.5)),
      Text(explanationText,
          style: TextStyle(
              color: DarkGrayTextColor,
              fontFamily: 'Poppins',
              fontSize: responsiveApp.sizeServiceList,
              height: 1.5))
    ]));
  }
}
