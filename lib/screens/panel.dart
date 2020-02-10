import 'package:flutter/material.dart';
import 'package:sme_mobile/screens/bill/bill.dart';
import 'package:sme_mobile/screens/dashboard/dash_board.dart';
import 'package:sme_mobile/screens/home.dart';
import 'package:sme_mobile/screens/item/item.dart';
import 'package:sme_mobile/theme/style.dart';
import 'package:sme_mobile/widgets/drawer_widget.dart';

class PanelControl extends StatefulWidget {
  final String appName;

  PanelControl({Key key, this.appName}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PanelControlState();
  }
}

class PanelControlState extends State<PanelControl> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ItemScreen(),
    BillScreen(),
    DashBoardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: _bottomNavBar());
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Bottom Navigation Bar
  Widget _bottomNavBar() {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: AppStyle.bottomNavOnSelectedStyle,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home', style: AppStyle.bottomNavOnUnSelectedStyle),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text('Items', style: AppStyle.bottomNavOnUnSelectedStyle),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monetization_on),
          title: Text('Bill', style: AppStyle.bottomNavOnUnSelectedStyle),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          title: Text('More', style: AppStyle.bottomNavOnUnSelectedStyle),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}
