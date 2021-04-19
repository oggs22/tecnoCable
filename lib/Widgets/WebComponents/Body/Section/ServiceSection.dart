import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Widgets/Components/ServiceListView.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Models/Service.dart';

class ServiceSection extends StatelessWidget {
  ServiceSection();
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    return Container(
        padding: responsiveApp.edgeInsetsApp.onlyLargeVerticalEdgeInsets,
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
                        darkBlueText: serviceDarkBlueTextStr,
                        lightBlueText: serviceLightBlueTextStr,
                      ),
                      SizedBox(height: responsiveApp.aboutUsButtonSpace),
                      ServiceListView(serviceList)
                    ],
                  ),
                  Image.asset(
                    'assets/images/telecommunications.png',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
