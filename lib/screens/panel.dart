import 'package:flutter/material.dart';
import 'package:sme_mobile/screens/panel_state.dart';

class PanelControl extends StatefulWidget {
  final String appName;

  PanelControl({Key key, this.appName}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PanelControlState();
  }
}
