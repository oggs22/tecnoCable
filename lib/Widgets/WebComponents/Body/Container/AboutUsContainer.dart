import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsContainer extends StatelessWidget {
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
        padding: responsiveApp.edgeInsetsApp.onlyLargeBottomEdgeInsets,
        height: MediaQuery.of(context).size.height - 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        )),
        child: Container(
          padding: EdgeInsets.only(left: responsiveApp.paddingLeftAboutUs),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(aboutUsTextStr.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                      fontSize: responsiveApp.aboutUsText,
                      height: 1.2)),
              SizedBox(height: responsiveApp.aboutUsButtonSpace),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: backgroundPinkColor,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                  onPressed: () => _launchWhatsapp(),
                  child: Text(aboutUsButtonTextStr.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: responsiveApp.aboutUsButtonText,
                      )))
            ],
          ),
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
