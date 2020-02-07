import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme_mobile/screen/panel.dart';

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SME',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PanelControl(appName: 'POS',),
      debugShowCheckedModeBanner: false,
    );
  }

}