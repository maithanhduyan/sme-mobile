import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'This is Customer screen',
              ),
              Text(
                'Customer',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        )
    );
  }
}