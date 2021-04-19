import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';

class TitleWithTwoColors extends StatelessWidget {
  TitleWithTwoColors({Key key, this.darkBlueText, this.lightBlueText})
      : super(key: key);

  final String darkBlueText, lightBlueText;

  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        darkBlueText.toUpperCase(),
        textAlign: TextAlign.start,
        style: TextStyle(
            color: DarkBlueTextColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: responsiveApp.sizeTitleWithTwoColors),
      ),
      SizedBox(width: responsiveApp.barSpace1Width),
      Text(
        lightBlueText.toUpperCase(),
        textAlign: TextAlign.start,
        style: TextStyle(
            color: LightBlueTextColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: responsiveApp.sizeTitleWithTwoColors),
      ),
    ]));
  }
}
