import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pomo/theme.dart';

import 'history card.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 0, 0, 0),
          child: Text(
            'History',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 3, 28, 3),
          child: Divider(
            thickness: 1,
            color: White,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Flex(direction: Axis.vertical, children: [
          Center(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return HistoryCard();
              },
              itemCount: 2,
            ),
          ),
        ]),
      ],
    );
  }
}
