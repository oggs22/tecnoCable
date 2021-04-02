import 'package:flutter/material.dart';
import 'package:tecnocable/Util/Keys.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/StringApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';

class TecnocableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double opacity;
  TecnocableAppBar(this.opacity);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  ResponsiveApp responsiveApp;
  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return AppBar(
      backgroundColor: backgroundBlueColor.withOpacity(opacity),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          homeScaffoldKey.currentState.openDrawer();
        },
      ),
      centerTitle: true,
      title: Image.asset('assets/images/logo.png'),
    );
  }
}
