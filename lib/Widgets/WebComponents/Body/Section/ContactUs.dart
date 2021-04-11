import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';

class ContactUsSection extends StatelessWidget {
  ContactUsSection();
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
      padding: responsiveApp.edgeInsetsApp.onlyLargeBottomEdgeInsets,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/contact_us.png', fit: BoxFit.cover),
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
          )
        ],
      ),
    );
  }
}
