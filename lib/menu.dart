import 'package:flutter/material.dart';
import 'package:platzi_flutter/home_app.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Menu();
  }
  
}

class _Menu extends State<Menu>{
  int indexTab = 0;
  final List<Widget> widgets = [
    const HomeApp(),
    const HomeApp(),
    const HomeApp()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        //appBar: AppBar(
          //title: Text("Hola Mundo"),
        //),
      body: widgets[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor:  Colors.purple
        ),
        child: BottomNavigationBar(
            currentIndex: indexTab,
            onTap: onTapTapped,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Middle"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile"
              )
            ]
        ),
      ),
    );
  }
  
}