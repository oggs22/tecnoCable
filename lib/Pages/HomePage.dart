import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tecnocable/Util/SizingInfo.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Widgets/WebComponents/Header/Header.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _scrollPosition = 0;
  double _opacity = 0;

  ResponsiveApp responsiveApp;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    _opacity = _scrollPosition < responsiveApp.opacityHeight
        ? _scrollPosition / responsiveApp.opacityHeight
        : 1;
    return Scaffold(
      appBar: Header(_opacity),
    );
  }
}
