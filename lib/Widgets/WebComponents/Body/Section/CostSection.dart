import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Widgets/Components/ExplanationText.dart';

class CostSection extends StatelessWidget {
  CostSection();
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
        padding: responsiveApp.edgeInsetsApp.onlyLargeBottomEdgeInsets,
        child: Container(
          padding: EdgeInsets.only(left: responsiveApp.paddingLeftAboutUs),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleWithTwoColors(
                      darkBlueText: firstTitleCostTextSrt,
                      lightBlueText: secondTitleCostTextSrt),
                  ExplanationText(
                    titleText: technicalVisitTextSrt,
                    costText: technicalVisitCostTextSrt,
                    explanationText: technicalVisitExplanationTextSrt,
                  )
                ],
              ),
              Image.asset(
                'assets/images/cost-image.png',
                fit: BoxFit.cover,
              )
            ],
          ),
        ));
  }
}
