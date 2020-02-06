import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: Icon(CupertinoIcons.ellipsis),
            middle: Text('Home'),
            trailing: Icon(CupertinoIcons.search),
          ),
          child: Scaffold(
          ),
        );
      },
    );
  }
}
