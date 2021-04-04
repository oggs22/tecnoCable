import 'package:flutter/material.dart';
import 'package:tecnocable/Models/Service.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';

class ServiceContainer extends StatelessWidget {
  Service service;

  ServiceContainer(this.service);

  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Text(
      service.text,
      style: TextStyle(
          color: DarkGrayTextColor,
          fontFamily: 'Poppins',
          fontSize: responsiveApp.sizeServiceList,
          height: 1.5),
    );
  }
}
