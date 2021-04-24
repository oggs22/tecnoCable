import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Widgets/WebComponents/Body/Container/TechnicalVisitContainer.dart';
import 'package:tecnocable/Widgets/MobileComponents/Body/Container/MobileTechnicalVisitContainer.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Models/TechnicalVisit.dart';

class MobileTechnicalVisitSection extends StatelessWidget {
  MobileTechnicalVisitSection();
  ResponsiveApp responsiveApp;
  List<TechnicalVisit> list;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    return Container(
        padding: responsiveApp.edgeInsetsApp.onlyLargeVerticalEdgeInsets,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              width: responsiveApp.technicalVisionContainerCardWidth,
              child: Column(
                children: [
                  TitleWithTwoColors(
                    darkBlueText: technicalVisitFirstTitle,
                    lightBlueText: technicalVisitSecondTitle,
                  ),
                  SizedBox(width: responsiveApp.aboutUsButtonSpace),
                  Container(
                      height: responsiveApp.technicalVisionContainerCardHeight,
                      width: responsiveApp.technicalVisionContainerCardWidth,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MobileTechnicalVisitContainer(
                                technicalVisitList[0]),
                            MobileTechnicalVisitContainer(
                                technicalVisitList[1]),
                            MobileTechnicalVisitContainer(
                                technicalVisitList[2]),
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
