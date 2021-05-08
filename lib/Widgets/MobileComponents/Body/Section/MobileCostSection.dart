import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Widgets/Components/ExplanationText.dart';
import 'package:url_launcher/url_launcher.dart';

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
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(installationAntennasTextStr,
                        style: TextStyle(
                            color: DarkGrayTextColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: responsiveApp.sizeServiceList,
                            height: 1.5)),
                    Container(
                      child: Row(
                        children: [
                          Text(installationAntennasExplanationTextStr,
                              style: TextStyle(
                                  color: DarkGrayTextColor,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: responsiveApp.sizeServiceList)),
                          SizedBox(width: 3),
                          InkWell(
                            onTap: () => _launchWhatsapp(),
                            child: Text(here,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: backgroundPinkColor,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: responsiveApp.sizeServiceList)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: responsiveApp.aboutUsButtonSpace),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _launchWhatsapp() async {
    const url = "https://wa.me/584126390634";
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        webOnlyWindowName: '_blank',
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
