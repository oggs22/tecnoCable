import 'package:flutter/material.dart';
import 'package:tecnocable/Models/TechnicalVisit.dart';

import 'TechnicalVisitContainer.dart';

class TechnicalVisitListView extends StatelessWidget {
  List<TechnicalVisit> list;

  TechnicalVisitListView(this.list);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: list.map((i) => TechnicalVisitContainer(i)).toList()));
  }
}
