import 'package:flutter/material.dart';

class ButtonStateFull extends StatefulWidget {
  const ButtonStateFull({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonStateFull();
  }
}

class _ButtonStateFull extends State<ButtonStateFull> {

  bool _pressed = false;

  void _onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: _onPressedFav,
      child: Icon(
          _pressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}
