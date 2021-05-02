import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';
import 'package:url_launcher/url_launcher.dart';
import 'HeaderButton.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  final double opacity;

  Header(this.opacity);

  @override
  _HeaderState createState() => _HeaderState();

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _HeaderState extends State<Header> {
  ResponsiveApp responsiveApp;
  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    return Container(
        color: backgroundBlueColor,
        child: Padding(
            padding: responsiveApp.edgeInsetsApp.allMediumEdgeInsets,
            child: Padding(
              padding: responsiveApp.edgeInsetsApp.hrzExLargeEdgeInsets,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset('assets/images/logo.png'),
                Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      HeaderButton(0, aboutUsStr),
                      SizedBox(width: responsiveApp.barSpace2Width),
                      HeaderButton(1, servicesStr),
                      SizedBox(width: responsiveApp.barSpace2Width),
                      HeaderButton(2, knowUsStr),
                      SizedBox(width: responsiveApp.barSpace2Width),
                      HeaderButton(3, ratesStr),
                      SizedBox(width: responsiveApp.barSpace2Width),
                      HeaderButton(4, contactUsStr),
                      SizedBox(width: responsiveApp.barSpace1Width),
                      InkWell(
                        onTap: () => _launchWhatsapp(),
                        child: Image.asset('assets/images/whatsapp_header.png'),
                      ),
                      SizedBox(width: responsiveApp.barSpace1Width),
                      InkWell(
                        onTap: () => _launchInstagram(),
                        child:
                            Image.asset('assets/images/instagram_header.png'),
                      )
                    ])),
              ]),
            )));
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
