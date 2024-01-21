import 'package:flutter/material.dart';
import 'theme.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hello",
          style: Theme.of(context)
              .textTheme
              .headlineLarge, // Adjust the text style as needed
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
