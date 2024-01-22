import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PomodoroTimer extends StatefulWidget {
  @override
  State<PomodoroTimer> createState() => _PomodoroTimerState();
}

class _PomodoroTimerState extends State<PomodoroTimer> {
  int minutes = 25;
  int seconds = 0;
  bool isRunning = false;
  Timer? _timer;
  bool isPomodoro = true;
  var formatter = NumberFormat("00");
  bool isWaitingToStart = true; // Start with waiting state

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }
    setState(() {
      isRunning = true;
    });

    int totalSeconds = minutes * 60 + seconds;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (totalSeconds > 0) {
          totalSeconds--;
          minutes = totalSeconds ~/ 60;
          seconds = totalSeconds % 60;
        } else {
          _timer!.cancel(); // Cancel the timer when it reaches 0
          _transitionToNextSession();
        }
      });
    });
  }

  void pauseTimer() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
      setState(() {
        isRunning = false;
      });
    }
  }

  void resumeTimer() {
    startTimer();
    setState(() {
      isRunning = true;
      isWaitingToStart = false; // No longer waiting once started
    });
  }

  void stopTimer() {
    pauseTimer();
    _transitionToNextSession();
    setState(() {
      isRunning = false;
    });
  }

  void _transitionToNextSession() {
    if (isPomodoro) {
      _transitionToBreak();
    } else {
      _transitionToPomodoro();
    }
  }

  void _transitionToBreak() {
    setState(() {
      isPomodoro = false;
      minutes = 5;
      seconds = 0;
      isRunning = false;
      isWaitingToStart = true;
    });
  }

  void _transitionToPomodoro() {
    setState(() {
      isPomodoro = true;
      minutes = 25;
      seconds = 0;
      isRunning = false;
      isWaitingToStart = true;
    });
  }

  void resetTimer() {
    stopTimer();

    setState(() {
      isWaitingToStart = true; // Reset the flag to waiting state
      if (isPomodoro) {
        minutes = 25;
      } else {
        minutes = 5;
      }
      seconds = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${formatter.format(minutes)} : ${formatter.format(seconds)}",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (isRunning) {
                    pauseTimer();
                  } else {
                    if (isWaitingToStart) {
                      resumeTimer(); // Resume if waiting
                    } else {
                      startTimer(); // Start the timer only if not waiting
                    }
                  }
                },
                child: Text(
                  isRunning ? 'Niruthu ✋' : 'Arambi ✅',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: isRunning ? stopTimer : resetTimer,
                child: Text(
                  isRunning ? 'Aduthu ✅' : 'Aduthu 🔁',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
