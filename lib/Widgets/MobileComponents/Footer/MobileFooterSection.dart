import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Widgets/Components/ServiceListView.dart';
import 'package:tecnocable/Widgets/Components/TitleWithTwoColors.dart';
import 'package:tecnocable/Models/Service.dart';
import 'package:tecnocable/Values/ColorsApp.dart';
import 'package:url_launcher/url_launcher.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => _launchWhatsapp(),
                child: Image.asset('assets/images/mobile_footer_whatsapp.png'),
              ),
              SizedBox(width: responsiveApp.barSpace1Width),
              InkWell(
                onTap: () => _launchInstagram(),
                child: Image.asset('assets/images/mobile_footer_instagram.png'),
              ),
            ],
          )
        ],
      ),
    );
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

  _launchInstagram() async {
    const url = "https://www.instagram.com/tecnocable.ve/";
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
