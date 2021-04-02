import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';

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
        color: Theme.of(context).primaryColor.withOpacity(widget.opacity),
        child: Padding(
            padding: responsiveApp.edgeInsetsApp.allMediumEdgeInsets,
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Image.asset('assets/images/logo.png'),
              Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    SizedBox(width: responsiveApp.barSpace1Width),
                    HeaderButton(0, aboutUsStr),
                    SizedBox(width: responsiveApp.barSpace1Width),
                    HeaderButton(1, servicesStr),
                    SizedBox(width: responsiveApp.barSpace1Width),
                    HeaderButton(2, knowUsStr),
                    SizedBox(width: responsiveApp.barSpace1Width),
                    HeaderButton(3, ratesStr),
                    SizedBox(width: responsiveApp.barSpace1Width),
                    HeaderButton(4, contactUsStr),
                    SizedBox(width: responsiveApp.barSpace1Width),
                    Image.asset('assets/images/whatsapp_header.png'),
                    SizedBox(width: responsiveApp.barSpace1Width),
                    Image.asset('assets/images/instagram_header.png'),
                  ])),
            ])));
  }
}
