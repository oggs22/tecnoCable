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
              padding: EdgeInsets.only(left: (responsiveApp.width - 1000) / 2),
              width: responsiveApp.width,
              child: Row(
                children: [
                  TitleWithTwoColors(
                    darkBlueText: technicalVisitFirstTitle,
                    lightBlueText: technicalVisitSecondTitle,
                  ),
                  SizedBox(width: responsiveApp.aboutUsButtonSpace),
                  Container(
                      height: 400,
                      width: responsiveApp.width * 0.62,
                      child: SingleChildScrollView(
                        padding: EdgeInsets.only(left: 30, right: 30),
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
