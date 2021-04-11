import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Widgets/Components/ExplanationText.dart';

class MobileCostSection extends StatelessWidget {
  MobileCostSection();
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/mobile-cost-section.png',
            fit: BoxFit.cover,
          ),
          SizedBox(height: responsiveApp.aboutUsButtonSpace),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWithTwoColors(
                  darkBlueText: firstTitleCostTextSrt,
                  lightBlueText: secondTitleCostTextSrt),
              SizedBox(height: responsiveApp.aboutUsButtonSpace),
              ExplanationText(
                titleText: technicalVisitTextSrt,
                costText: technicalVisitCostTextSrt,
                explanationText: technicalVisitExplanationTextSrt,
              ),
              SizedBox(height: responsiveApp.aboutUsButtonSpace),
              ExplanationText(
                titleText: basicAntennaInstallationTextSrt,
                costText: basicAntennaInstallationCostTextSrt,
                explanationText: basicAntennaInstallationExplanationTextSrt,
              ),
              SizedBox(height: responsiveApp.aboutUsButtonSpace),
              ExplanationText(
                titleText: reWiringTextStr,
                costText: reWiriginCostTextStr,
                explanationText: reWiriginExplanationTextStr,
              ),
              SizedBox(height: responsiveApp.aboutUsButtonSpace),
              Text(installationAntennasTextStr,
                  style: TextStyle(
                      color: DarkGrayTextColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: responsiveApp.sizeServiceList)),
              Container(
                width: MediaQuery.of(context).size.width - 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(installationAntennasExplanationTextStr,
                        style: TextStyle(
                            color: DarkGrayTextColor,
                            fontFamily: 'Poppins',
                            fontSize: responsiveApp.sizeServiceList)),
                    Text(here,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: backgroundPinkColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: responsiveApp.sizeServiceList))
                  ],
                ),
              ),
              SizedBox(height: responsiveApp.aboutUsButtonSpace),
            ],
          )
        ],
      ),
    );
  }
}
