import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';

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
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        )),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    padding: EdgeInsets.symmetric(horizontal: 85, vertical: 20),
                  ),
                  onPressed: () {},
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
}
