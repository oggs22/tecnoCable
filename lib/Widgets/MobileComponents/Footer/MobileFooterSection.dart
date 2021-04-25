import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Widgets/Components/ServiceListView.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Models/Service.dart';
import 'package:tecnocable/Values/ColorsApp.dart';

class MobileFooterSection extends StatelessWidget {
  MobileFooterSection();
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    return Container(
      color: LightBlueTextColor,
      height: responsiveApp.mobileHeightFooter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            mobileFooterTextSrt.toUpperCase(),
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: responsiveApp.mobileFooterText,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Image.asset('assets/images/mobile_social_networks.png')
        ],
      ),
    );
  }
}
