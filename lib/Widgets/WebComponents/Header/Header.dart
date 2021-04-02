import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';

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
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Image.asset('assets/images/logo.png')])));
  }
}
