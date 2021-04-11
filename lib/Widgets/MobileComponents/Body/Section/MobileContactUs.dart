import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';

class MobileContactUsSection extends StatelessWidget {
  MobileContactUsSection();
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
      padding: responsiveApp.edgeInsetsApp.onlyLargeBottomEdgeInsets,
      child: Column(
        children: [
          Column(
            children: [
              Text(
                contactUsTextStr.toUpperCase(),
                style: TextStyle(
                    color: DarkBlueTextColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: responsiveApp.contactUsText,
                    height: 1.2),
              ),
              Text(socialNetworksUsTextStr.toUpperCase(),
                  style: TextStyle(
                      color: backgroundPinkColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: responsiveApp.contactUsText,
                      height: 1.2))
            ],
          ),
          Image.asset('assets/images/mobile_contact_us.png', fit: BoxFit.cover),
        ],
      ),
    );
  }
}
