import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.green,
            child: SvgPicture.asset(
              "assets/drawing.svg",
              color: Colors.black,
              semanticsLabel: "Logo",
            ),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Ready to Play');
            },
            child: const Text('Play'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Going to settings');
            },
            child: const Text('Settings'),
          ),
        ],
      ),
    );
  }
}