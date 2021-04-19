import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Widgets/WebComponents/Body/Container/TechnicalVisitListView.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Models/TechnicalVisit.dart';

class TechnicalVisitSection extends StatelessWidget {
  TechnicalVisitSection();
  ResponsiveApp responsiveApp;

  var _container = Container(
    height: 200,
    color: Colors.blue,
    margin: EdgeInsets.symmetric(vertical: 10),
  );

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    return Container(
      padding: EdgeInsets.only(
          left: responsiveApp.paddingLeftAboutUs,
          bottom: responsiveApp.paddingLeftAboutUs),
      child: Row(
        children: [
          TitleWithTwoColors(
            darkBlueText: technicalVisitFirstTitle,
            lightBlueText: technicalVisitSecondTitle,
          ),
          SizedBox(width: responsiveApp.aboutUsButtonSpace),
          Container(
              height: 200,
              width: responsiveApp.technicalVisitScrollWidth,
              // child ListView
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 160.0,
                      color: Colors.red,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.green,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.red,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.green,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.orange,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
