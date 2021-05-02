import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({
    Key key,
  }) : super(key: key);

  @override
  _MobileDrawerState createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  List<bool> _colors;

  ResponsiveApp responsiveApp;

  @override
  void initState() {
    super.initState();
    _colors = [false, false, false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
      width: responsiveApp.drawerWidth,
      child: Drawer(
        child: Container(
            color: Theme.of(context).backgroundColor,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        height: 60,
                        child: Image.asset(
                          'assets/images/mobile_logo.png',
                          fit: BoxFit.contain,
                          width: 150,
                        )),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color:
                          _colors[0] ? DarkBlueTextColor : Colors.transparent),
                  child: ListTile(
                      onTap: () {
                        setColor(0);
                      },
                      title: Text(aboutUsStr.toUpperCase(),
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: _colors[0]
                                  ? GrayCardBackgroundColor
                                  : DarkBlueTextColor,
                              fontWeight: FontWeight.bold))),
                ),
                Container(
                  decoration: BoxDecoration(
                      color:
                          _colors[1] ? DarkBlueTextColor : Colors.transparent),
                  child: ListTile(
                      onTap: () {
                        setColor(1);
                      },
                      title: Text(servicesStr.toUpperCase(),
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: _colors[1]
                                  ? GrayCardBackgroundColor
                                  : DarkBlueTextColor,
                              fontWeight: FontWeight.bold))),
                ),
                Container(
                  decoration: BoxDecoration(
                      color:
                          _colors[2] ? DarkBlueTextColor : Colors.transparent),
                  child: ListTile(
                      onTap: () {
                        setColor(2);
                      },
                      title: Text(knowUsStr.toUpperCase(),
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: _colors[2]
                                  ? GrayCardBackgroundColor
                                  : DarkBlueTextColor,
                              fontWeight: FontWeight.bold))),
                ),
                Container(
                  decoration: BoxDecoration(
                      color:
                          _colors[3] ? DarkBlueTextColor : Colors.transparent),
                  child: ListTile(
                      onTap: () {
                        setColor(3);
                      },
                      title: Text(ratesStr.toUpperCase(),
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: _colors[3]
                                  ? GrayCardBackgroundColor
                                  : DarkBlueTextColor,
                              fontWeight: FontWeight.bold))),
                ),
                Container(
                  decoration: BoxDecoration(
                      color:
                          _colors[4] ? DarkBlueTextColor : Colors.transparent),
                  child: ListTile(
                      onTap: () {
                        setColor(4);
                      },
                      title: Text(contactUsStr.toUpperCase(),
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: _colors[4]
                                  ? GrayCardBackgroundColor
                                  : DarkBlueTextColor,
                              fontWeight: FontWeight.bold))),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => _launchWhatsapp(),
                        child: Image.asset(
                          'assets/images/whatsapp_drawer.png',
                          fit: BoxFit.contain,
                          width: 40,
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                          onTap: () => _launchInstagram(),
                          child: Image.asset(
                            'assets/images/drawer_instagram.png',
                            fit: BoxFit.contain,
                            width: 40,
                          )),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }

  getItem({String title, IconData icon, onTap, Color textColor}) {
    return ListTile(
      onTap: onTap,
      title: Text(title.toUpperCase(),
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              color: DarkBlueTextColor,
              fontWeight: FontWeight.bold)),
    );
  }

  setColor(int index) {
    setState(() {
      for (var i = 0; i < _colors.length; i++) {
        _colors[i] = false;
      }

      _colors[index] = true;
    });
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
