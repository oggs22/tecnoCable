import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tecnocable/Util/SizingInfo.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Widgets/MobileComponents/Body/Section/MobileCostSection.dart';
import 'package:tecnocable/Widgets/MobileComponents/Body/Section/MobileServiceSection.dart';
import 'package:tecnocable/Widgets/WebComponents/Body/Footer/FooterSection.dart';
import 'package:tecnocable/Widgets/WebComponents/Body/Section/CostSection.dart';
import 'package:tecnocable/Widgets/WebComponents/Body/Section/ServiceSection.dart';
import 'package:tecnocable/Widgets/WebComponents/Body/Container/AboutUsContainer.dart';
import 'package:tecnocable/Widgets/WebComponents/Body/Section/ContactUs.dart';
import 'package:tecnocable/Widgets/MobileComponents/Body/Section/MobileDrawer.dart';
import 'package:tecnocable/Widgets/WebComponents/Body/Section/TechnicalVisitSection.dart';
import 'package:tecnocable/Widgets/MobileComponents/Body/Section/MobileTechnicalVisitSection.dart';
import 'package:tecnocable/Widgets/MobileComponents/Body/Container/MobileAboutUsContainer.dart';
import 'package:tecnocable/Widgets/MobileComponents/Footer/MobileFooterSection.dart';
import 'package:tecnocable/Widgets/WebComponents/Header/Header.dart';
import 'package:tecnocable/Widgets/MobileComponents/Body/Section/MobileContactUs.dart';
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

  _scrollListener() {
    setState(() {
      _scrollPosition = autoScrollController.position.pixels;
    });
  }

  @override
  void initState() {
    autoScrollController = AutoScrollController(
        //add this for advanced viewport boundary. e.g. SafeArea
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);

    autoScrollController.addListener(_scrollListener);
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
      appBar: isMobileAndTablet(context)
          ? TecnocableAppBar(_opacity)
          : Header(_opacity, autoScrollController),
      drawer: MobileDrawer(autoScrollController),
      body: ListView(controller: autoScrollController, children: <Widget>[
        addScroll(
            Container(
              child: isMobileAndTablet(context)
                  ? MobileAboutUsContainer()
                  : AboutUsContainer(),
            ),
            0),
        addScroll(
            Container(
              child: isMobileAndTablet(context)
                  ? MobileServiceSection()
                  : ServiceSection(),
            ),
            1),
        addScroll(
            Container(
              child: isMobileAndTablet(context)
                  ? MobileTechnicalVisitSection()
                  : TechnicalVisitSection(),
            ),
            2),
        addScroll(
            Container(
                child: isMobileAndTablet(context)
                    ? MobileCostSection()
                    : CostSection()),
            3),
        addScroll(
            Container(
              child: isMobileAndTablet(context)
                  ? MobileContactUsSection()
                  : ContactUsSection(),
            ),
            4),
        Container(
          child: isMobileAndTablet(context)
              ? MobileFooterSection()
              : FooterSection(),
        )
      ]),
    );
  }

  addScroll(Widget child, index) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: autoScrollController,
      index: index,
      child: child,
    );
  }
}
