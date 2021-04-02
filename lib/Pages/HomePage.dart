import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tecnocable/Util/SizingInfo.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ResponsiveApp responsiveApp;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Scaffold();
  }
}
