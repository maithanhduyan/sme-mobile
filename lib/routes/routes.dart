import 'package:sme_mobile/screens/customer.dart';
import 'package:sme_mobile/screens/customer_add.dart';
import 'package:sme_mobile/screens/login.dart';
import 'package:sme_mobile/screens/panel.dart';
import 'package:sme_mobile/screens/setting.dart';

abstract class Routes {
  static const String contacts = '/contacts';
  static const String events = '/events';
  static const String notes = '/notes';
  static const String panel = '/panel';
  static const String setting = '/setting';
  static const String login = '/login';
  static const String customer = '/customer';
  static const String customer_add = '/customer_add';

  static var initialAppRoute = {
    panel: (context) => PanelControl(),
    setting: (context) => SettingScreen(),
    login: (context) => LoginScreen(),
    customer: (context) => CustomerScreen(),
    customer_add: (context) => CustomerAddScreen(),
  };
}
