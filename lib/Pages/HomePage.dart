import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tecnocable/Util/SizingInfo.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Widgets/MobileComponents/Body/Section/ServiceSection.dart';
import 'package:tecnocable/Widgets/WebComponents/Body/Container/AboutUsContainer.dart';
import 'package:tecnocable/Widgets/MobileComponents/Body/Container/MobileAboutUsContainer.dart';
import 'package:tecnocable/Widgets/WebComponents/Header/Header.dart';
import 'package:tecnocable/Widgets/MobileComponents/TecnocableAppBar.dart';
import 'package:tecnocable/Util/Keys.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _scrollPosition = 0;
  double _opacity = 0;

  ResponsiveApp responsiveApp;
  bool _isVisible = false;
  AutoScrollController autoScrollController;

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

    _isVisible = _scrollPosition >= responsiveApp.menuHeight;
    return Scaffold(
      key: homeScaffoldKey,
      backgroundColor: Theme.of(context).backgroundColor,
      floatingActionButton: Visibility(
        visible: _isVisible,
        child: FloatingActionButton(
          onPressed: () => {autoScrollController.scrollToIndex(0)},
          child: Icon(Icons.arrow_upward),
        ),
      ),
      appBar: isMobileAndTablet(context)
          ? TecnocableAppBar(_opacity)
          : Header(_opacity),
      body: ListView(children: [
        isMobileAndTablet(context)
            ? MobileAboutUsContainer()
            : AboutUsContainer(),
        ServiceSection()
      ]),
    );
  }
}
