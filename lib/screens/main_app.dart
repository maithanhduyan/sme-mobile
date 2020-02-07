import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme_mobile/routes/routes.dart';
import 'package:sme_mobile/screens/panel.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SME',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PanelControl(
        appName: 'POS',
      ),
      routes: Routes.initialAppRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
