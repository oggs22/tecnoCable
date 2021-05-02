import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileAboutUsContainer extends StatelessWidget {
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
        padding: responsiveApp.edgeInsetsApp.onlyLargeBottomEdgeInsets,
        height: MediaQuery.of(context).size.height - 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: backgroundBlueColor,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/mobile_background.png"),
            )),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/mobile_about.png"),
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
                    padding: EdgeInsets.symmetric(horizontal: 85, vertical: 20),
                  ),
                  onPressed: () {
                    _launchWhatsapp();
                  },
                  child: Text(aboutUsButtonTextStr.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: responsiveApp.aboutUsButtonText,
                      ))),
              SizedBox(height: responsiveApp.barSpace2Width),
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
