import 'package:flutter/material.dart';
import 'package:flooder/screens/MainMenuScreen.dart';

void main() {
  runApp(const FlooderApp());
}

class FlooderApp extends StatelessWidget {
  const FlooderApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainMenu(),
    );
  }
}
