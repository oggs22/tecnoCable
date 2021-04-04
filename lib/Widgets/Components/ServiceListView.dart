import 'package:flutter/material.dart';
import 'package:tecnocable/Models/Service.dart';

import 'ServiceContainer.dart';

class ServiceListView extends StatelessWidget {
  List<Service> list;
  ServiceListView(this.list);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: list.map((i) => ServiceContainer(i)).toList()));
  }
}
