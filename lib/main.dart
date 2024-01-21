import 'package:flutter/material.dart';
import 'package:pomo/theme.dart';
import 'home.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: blackHowl,
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
