import 'package:flutter/material.dart';
import 'package:platzi_flutter/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement
    var list = List<Widget>.empty(growable: true);
    for(var i = 0; i < 4; i++){
      list.add(Review("","Lol","Lol","Lol"));
    }
    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: list
    );
  }

}