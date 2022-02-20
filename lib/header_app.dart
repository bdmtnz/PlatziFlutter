import 'package:flutter/material.dart';
import 'package:platzi_flutter/card_list.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: const [
        CardImageList()
      ],
    );
  }

}