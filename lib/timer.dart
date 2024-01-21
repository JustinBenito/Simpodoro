import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'countdown.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'tasks.dart';
import 'countdown.dart';
import 'history.dart';

class PomoTimer extends StatefulWidget {
  @override
  State<PomoTimer> createState() => _PomoTimerState();
}

class _PomoTimerState extends State<PomoTimer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Theme.of(context).primaryColorLight,
              ),
              width: MediaQuery.of(context).size.width - 50,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(children: [
                  PomodoroTimer(),
                ]),
              ),
            ),
          ),
        ),
        Divider(
          height: 10,
        ),
        // Tasks()
      ],
    );
  }
}
