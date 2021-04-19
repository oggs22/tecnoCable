import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Widgets/WebComponents/Body/Container/TechnicalVisitContainer.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Models/TechnicalVisit.dart';

class TechnicalVisitSection extends StatelessWidget {
  TechnicalVisitSection();
  ResponsiveApp responsiveApp;
  List<TechnicalVisit> list;

  var _container = Container(
    height: 200,
    color: Colors.blue,
    margin: EdgeInsets.symmetric(vertical: 10),
  );

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    return Container(
        padding: responsiveApp.edgeInsetsApp.onlyLargeVerticalEdgeInsets,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              width: 1000,
              child: Row(
                children: [
                  TitleWithTwoColors(
                    darkBlueText: technicalVisitFirstTitle,
                    lightBlueText: technicalVisitSecondTitle,
                  ),
                  SizedBox(width: responsiveApp.aboutUsButtonSpace),
                  Container(
                      height: 400,
                      width: 710,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            TechnicalVisitContainer(technicalVisitList[0]),
                            TechnicalVisitContainer(technicalVisitList[1]),
                            TechnicalVisitContainer(technicalVisitList[2]),
                          ],
                        ),
                      )),
                ],
              ),
            )
          ],
        ));
  }
}
