import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sme_mobile/screens/main_app.dart';

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

