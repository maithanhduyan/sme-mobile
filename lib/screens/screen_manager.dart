import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme_mobile/screens/counter.dart';
import 'package:sme_mobile/screens/home.dart';
import 'package:sme_mobile/screens/item.dart';
import 'package:sme_mobile/screens/report.dart';

class ScreenManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.shopping_cart),
          title: Text('Items'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.share),
          title: Text('Counter'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.bookmark),
          title: Text('Report'),
        ),
      ]),
      tabBuilder: (context, index) {
        if (index == 0) {
          return HomeScreen();
        } else if(index == 1){
          return ItemScreen();
        }else if(index == 2){
          return CounterScreen();
        }else{
          return ReportScreen();
        }
      },
    );
  }
}