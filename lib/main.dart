import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sme_mobile/screen/home.dart';
import 'package:sme_mobile/screen/main_app.dart';
import 'package:sme_mobile/screen/panel.dart';

void main(){
  {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    runApp(
        MainApp()
    );
  }
}

