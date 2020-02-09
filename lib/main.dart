import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sme_mobile/routes/routes.dart';
import 'package:sme_mobile/screens/panel.dart';

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

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SME',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      //localizationsDelegates:,
      supportedLocales: [
        const Locale('en'), // English,
        const Locale('vi'), // English,
      ],
      home: PanelControl(
        appName: 'POS',
      ),
      routes: Routes.initialAppRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

