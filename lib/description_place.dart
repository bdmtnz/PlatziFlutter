import 'package:flutter/material.dart';
import 'package:platzi_flutter/button.dart';

class DescriptionPlace extends StatelessWidget {
  String description = "Prueba de texto";

  DescriptionPlace({Key? key}) : super(key: key);

  static Widget star(bool border) {
    return Container (
        margin: const EdgeInsets.only(
            top: 0.0,
            right: 3.0
        ),
        child: Icon(
            border ? Icons.star : Icons.star_border,
            color: const Color(0xFFf2C611)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final titleStars = Row(
      children: <Widget> [
        Container (
          margin: const EdgeInsets.only(
            top: 0.0,
            left: 20.0,
            right: 20.0
          ),
          child: const Text(
            "Prueba",
            style: TextStyle(
              fontFamily: "RobotoR",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            )
          )
        ),
        Row(
          children: [
            star(true),
            star(true),
            star(true),
            star(true),
            star(false)
          ],
        )
      ]
    );

    final descriptionText = Row(
      children: <Widget> [
        Container(
            margin: const EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0
            ),
            child: Text(
                description,
                style: const TextStyle(
                    fontFamily: "RobotoR",
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold
                )
            )
        )
      ]
    );

    final div = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        titleStars,
        descriptionText,
        Button()
      ]
    );

    return div;
  }
}