
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'This is Items screen',
              ),
              Text(
                'Items',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        )
    );

  }
}