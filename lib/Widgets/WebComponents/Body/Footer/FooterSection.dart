import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Widgets/Components/ServiceListView.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Models/Service.dart';
import 'package:tecnocable/Values/ColorsApp.dart';

class FooterSection extends StatelessWidget {
  FooterSection();
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    return Container(
      color: LightBlueTextColor,
      height: responsiveApp.heightFooter,
      padding: EdgeInsets.only(
          left: responsiveApp.paddingLeftAboutUs,
          right: responsiveApp.paddingLeftAboutUs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            footerTextSrt.toUpperCase(),
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: responsiveApp.footerText,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Image.asset('assets/images/whatsapp_header.png'),
              SizedBox(width: responsiveApp.barSpace1Width),
              Image.asset('assets/images/instagram_header.png'),
            ],
          )
        ],
      ),
    );
  }
}
