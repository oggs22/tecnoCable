import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Widgets/Components/ExplanationText.dart';
import 'package:url_launcher/url_launcher.dart';

class CostSection extends StatelessWidget {
  CostSection();
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
        padding: responsiveApp.edgeInsetsApp.onlyLargeBottomEdgeInsets,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              width: 1000,
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
                    fit: BoxFit.contain,
                    height: 350,
                  )
                ],
              ),
            ),
            SizedBox(height: responsiveApp.aboutUsButtonSpace),
            Container(
              width: 1000,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ExplanationText(
                    titleText: basicAntennaInstallationTextSrt,
                    costText: basicAntennaInstallationCostTextSrt,
                    explanationText: basicAntennaInstallationExplanationTextSrt,
                  ),
                  ExplanationText(
                    titleText: reWiringTextStr,
                    costText: reWiriginCostTextStr,
                    explanationText: reWiriginExplanationTextStr,
                  ),
                  Column(
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
                                    fontSize: responsiveApp.sizeServiceList,
                                    height: 1.5)),
                            SizedBox(width: 3),
                            InkWell(
                              onTap: () => _launchWhatsapp(),
                              child: Text(here,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: backgroundPinkColor,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: responsiveApp.sizeServiceList,
                                      height: 1.5)),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
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
