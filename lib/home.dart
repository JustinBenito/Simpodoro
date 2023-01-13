import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pomo/theme.dart';
import 'package:pomo/timer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackhowlprimary,
      appBar: AppBar(
        title: Text('Simpodoro'),
      ),
      drawer: Drawer(
          backgroundColor: blackhowllight,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView(
              children: [
                Text('Settings', style: Theme.of(context).textTheme.headline1),
                Divider(
                  thickness: 1,
                  color: White,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelStyle: Theme.of(context).textTheme.subtitle1,
                        labelText: "Pomodoro Time ",
                        hintText: "25 Minutes",
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelStyle: Theme.of(context).textTheme.subtitle1,
                        labelText: "Break Time ",
                        hintText: "5 Minutes",
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelStyle: Theme.of(context).textTheme.subtitle1,
                        labelText: "Long Break Time",
                        hintText: "15 Minutes",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('SAVE')),
                  ],
                )
              ],
            ),
          )),
      body: PomoTimer(),
    );
  }
}
