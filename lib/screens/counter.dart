import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'This is Counter screen',
              ),
              Text(
                'Counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ));
  }
}
