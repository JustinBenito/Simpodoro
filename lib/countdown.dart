import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class Countdown extends StatefulWidget {
  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  int seconds = 0;
  int minutes = 1;
  int end = 0;
  bool isstarted = false;
  bool breaks = false;

  // @override
  // void initState() {
  //   if (minutes == 0) {
  //     setState(() {
  //       minutes = 5;
  //       seconds = 0;
  //     });
  //   }
  //   super.initState();
  // }

  void breakTimer() {
    if (breaks == true) {
      setState(() {
        minutes = 25;
        seconds = 0;
        breaks = false;
      });
    }
    setState(() {
      minutes = 2;
      seconds = 0;
      breaks = true;
    });
  }

  Timer? _timer;
  var f = NumberFormat("00");
  void stopTimer() {
    if (minutes == 25) {
      setState(() {
        seconds = 0;
        minutes = 0;
      });
    } else {
      _timer!.cancel();
      setState(() {
        seconds = 0;
        minutes = 0;
      });
    }
  }

  void startTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }
    if (minutes > 0) {
      seconds = minutes * 60;
    }
    if (seconds > 60) {
      minutes = (seconds / 60).floor();
      seconds -= (minutes * 60);
    }
    _timer = Timer.periodic(Duration(seconds: 1), ((timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          if (minutes > 0) {
            seconds = 59;
            minutes--;
          } else {
            breakTimer();
            isstarted = false;
            _timer!.cancel();
          }
        }
      });
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "${f.format(minutes)} : ${f.format(seconds)}",
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                visible: !isstarted,
                child: ElevatedButton(
                    onPressed: () {
                      startTimer();
                      setState(() {
                        isstarted = true;
                      });
                    },
                    child: Text('START')),
              ),
              SizedBox(
                width: 10,
              ),
              Visibility(
                visible: !isstarted,
                child: ElevatedButton(
                    onPressed: () {
                      stopTimer();
                      end += 1;
                    },
                    child: Text('BREAK')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
