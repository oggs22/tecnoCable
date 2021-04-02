import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';

// class AboutUsContainer extends StatelessWidget {
//   ResponsiveApp responsiveApp;

//   @override
//   Widget build(BuildContext context) {
//     responsiveApp = ResponsiveApp(context);
//     return Scaffold(
//         body: Stack(
//       children: [Image.asset('assets/images/background.png')],
//     ));
//   }
// }

class AboutUsContainer extends StatelessWidget {
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/background.png"),
        )));
  }
}
