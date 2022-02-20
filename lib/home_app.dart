import 'package:flutter/material.dart';
import 'package:platzi_flutter/review_list.dart';

import 'description_place.dart';
import 'header_app.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          const HeaderAppBar(),
          DescriptionPlace(),
          //Review("","Lol","Lol","Lol")
          const ReviewList()
        ]
    );
  }

}