import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 3, 28, 3),
      child: InkWell(
        child: Card(
          color: Theme.of(context).primaryColorLight,
          child: ListTile(
            title: Text(
              '1:05' + 'Focused',
              style: Theme.of(context).textTheme.headline5,
            ),
            subtitle: Text(
              '1/10/2022',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ),
      ),
    );
  }
}
