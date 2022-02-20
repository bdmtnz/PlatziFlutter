import 'package:flutter/material.dart';

import 'description_place.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/people.jpg";
  static const String pathDefault = "assets/img/people.jpg";
  String name = "Varuna Yassas";
  String details = "1 review de 5 photos";
  String comment = "Thre is bla bla bla";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context){
    //TODO: implement build
    final userComment = Container(
        margin: const EdgeInsets.only(
            left: 20.0
        ),
        child: Text(
            details,
            style: const TextStyle(
                fontFamily: "RobotoR",
                fontSize: 13.0,
                fontWeight: FontWeight.w900,
                color: Color(0xFFa3a5a7)
            )
        )
    );

    final userInfo = Container(
        margin: const EdgeInsets.only(
            left: 20.0
        ),
        child: Row(
          children: <Widget>[
            Column(
                children: [
                  Text(
                    details,
                    style: const TextStyle(
                        fontFamily: "RobotoR",
                        fontSize: 13.0,
                        color: Color(0xFFa3a5a7)
                    )
                )]
            ),
            Column(
                children: [
                  Row(
                    children: [
                    ],
                  )
                ]
            )
          ],
        )
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        style: const TextStyle(
          fontFamily: "RobotoR",
          fontSize: 17.0
        )
      )
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        userName,
        userInfo,
        userComment
      ]
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 0.0,
        left: 0.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage("./assets/img/people.jpg"),
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
            scale: 0.3
        )
      ),
    );

    return Row(
      children: <Widget> [
        photo,
        userDetails
      ]
    );
  }

}