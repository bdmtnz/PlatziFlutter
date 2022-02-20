import 'package:flutter/material.dart';
import 'package:platzi_flutter/card_image.dart';

class CardImageList extends StatelessWidget{
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          CardImage(),
          CardImage(),
          CardImage(),
          CardImage()
        ]
      )
    );
  }

}