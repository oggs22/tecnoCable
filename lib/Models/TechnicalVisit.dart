import 'package:flutter/cupertino.dart';

import 'package:tecnocable/Values/StringApp.dart';

class TechnicalVisit {
  final String index;
  final String text;
  final String imagePath;

  TechnicalVisit({this.index, this.text, this.imagePath});
}

List<TechnicalVisit> technicalVisitList = [
  TechnicalVisit(
      index: "01",
      text: technicalVisitFirst,
      imagePath: "assets/images/technical_visit_1.png"),
  TechnicalVisit(
      index: "02",
      text: technicalVisitSecond,
      imagePath: "assets/images/technical_visit_2.png"),
  TechnicalVisit(
      index: "03",
      text: technicalVisitThird,
      imagePath: "assets/images/technical_visit_3.png")
];
