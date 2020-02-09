import 'package:sme_mobile/screens/bill/bill.dart';
import 'package:sme_mobile/screens/bill/bill_list.dart';
import 'package:sme_mobile/screens/customer/customer.dart';
import 'package:sme_mobile/screens/customer/customer_add.dart';
import 'package:sme_mobile/screens/inventory/inventory.dart';
import 'package:sme_mobile/screens/login.dart';
import 'package:sme_mobile/screens/panel.dart';
import 'package:sme_mobile/screens/report/report.dart';
import 'package:sme_mobile/screens/setting.dart';

abstract class Routes {
  static const String contacts = '/contacts';
  static const String events = '/events';
  static const String notes = '/notes';
  static const String panel = '/panel';
  static const String setting = '/setting';
  static const String report = '/report';
  static const String login = '/login';
  static const String inventory = '/inventory';
  static const String bill = '/bill';
  static const String billList = '/billList';
  static const String customer = '/customer';
  static const String customer_add = '/customer_add';

  static var initialAppRoute = {
    panel: (context) => PanelControl(),
    setting: (context) => SettingScreen(),
    login: (context) => LoginScreen(),
    customer: (context) => CustomerScreen(),
    customer_add: (context) => CustomerAddScreen(),
    report: (context) => ReportScreen(),
    inventory: (context) => InventoryScreen(),
    bill: (context) => BillScreen(),
    billList: (context) => BillListScreen(),
  };
}
