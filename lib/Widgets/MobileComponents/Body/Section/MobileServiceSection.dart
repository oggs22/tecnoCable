import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Widgets/Components/ServiceListView.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Models/Service.dart';

class MobileServiceSection extends StatelessWidget {
  MobileServiceSection();
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: responsiveApp.aboutUsButtonSpace),
          Image.asset(
            'assets/images/mobile_telecommunications.png',
            fit: BoxFit.cover,
          ),
          SizedBox(height: responsiveApp.aboutUsButtonSpace),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWithTwoColors(
                darkBlueText: serviceDarkBlueTextStr,
                lightBlueText: serviceLightBlueTextStr,
              ),
              ServiceListView(serviceList)
            ],
          ),
          SizedBox(height: responsiveApp.aboutUsButtonSpace),
        ],
      ),
    );
  }
}
