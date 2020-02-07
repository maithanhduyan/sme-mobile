import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme_mobile/screens/panel.dart';
import 'package:sme_mobile/screens/setting.dart';

import 'login.dart';

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SME',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PanelControl(appName: 'POS',),
      routes: {
        '/panel': (context) => PanelControl(),
        '/setting': (context) => SettingScreen(),
        '/login': (context) => LoginScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }

}