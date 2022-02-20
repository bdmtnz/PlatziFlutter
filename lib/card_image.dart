import 'package:flutter/material.dart';
import 'package:platzi_flutter/button_state_full.dart';

class CardImage extends StatelessWidget {
  static const String pathImage = "assets/img/people.png";
  const CardImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: const EdgeInsets.only(
        top: 80.0,
        left: 20.0
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0,7.0)
          )
        ]
      )
    );
    
    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [
        card,
        const ButtonStateFull()
      ]
    );
  }

}