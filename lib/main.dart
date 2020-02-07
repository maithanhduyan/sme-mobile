import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';
import 'package:sme_mobile/screens/screen_manager.dart';
import 'package:sme_mobile/theme/style.dart';

import 'data/app_state.dart';
import 'data/preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    ScopedModel<AppState>(
      model: AppState(),
      child: ScopedModel<Preferences>(
        model: Preferences()..load(),
        child: CupertinoApp(
          debugShowCheckedModeBanner: false,
          color: Styles.appBackground,
          home: ScreenManager(),
          
        ),
      ),
    ),
  );
}

