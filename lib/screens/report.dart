import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ReportScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'This is report screen',
              ),
              Text(
                'Report',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        )
    );
  }
}